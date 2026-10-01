import 'dart:convert';
import 'dart:developer';

import 'package:html/parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:kenny_tv/src/db.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/models/season_model/season_model.dart';
import 'package:kenny_tv/src/utils/dio.dart';

part "episodes_provider.g.dart";

RegExp seasonLongIdRegExp = RegExp(
  r"(?<=arc:season:southpark\.intl:)[a-z0-9\-]+",
);

Future<List<Season>> processSeasonUrl(String url) async {
  log("Fetching seasons from $url");
  final response = await dio.get(url);
  log("Fetched seasons page from $url with status ${response.statusCode}");
  final document = parse(response.data);

  final dropDownList = document.body!.querySelector(
    "ul[data-testid='DropdownList']",
  );

  final listElements = dropDownList!.getElementsByTagName("li");
  log("Found ${listElements.length} season entries at $url");

  List<Future<Season>> seasonFutures = [];

  // This fetches all seasons but the latest one
  for (var listElement in listElements) {
    final aTag = listElement.getElementsByTagName("a").first;

    if (!aTag.attributes.containsKey("href")) {
      continue;
    }

    final seasonUrl = aTag.attributes["href"]!;
    final seasonFuture = dio
        .get<String>("https://www.southparkstudios.nu$seasonUrl")
        .then((htmlResponse) {
          log(
            "Fetched season page $seasonUrl with status ${htmlResponse.statusCode}",
          );
          final html = htmlResponse.data;
          if (html == null) {
            throw StateError("Season page returned no HTML for $seasonUrl");
          }

          final seasonLongIdMatch = seasonLongIdRegExp.firstMatch(html);
          if (seasonLongIdMatch == null) {
            throw StateError(
              "Could not find a season ID in the response for $seasonUrl",
            );
          }

          final seasonLongId = seasonLongIdMatch.group(0)!;

          try {
            return Season.fromUrl(
              seasonUrl,
              "mgid:arc:season:southpark.intl:$seasonLongId",
            );
          } catch (error, stackTrace) {
            log(
              "Failed to parse season metadata for $seasonUrl: $error",
              error: error,
              stackTrace: stackTrace,
            );
            rethrow;
          }
        })
        .catchError((Object error, StackTrace stackTrace) {
          log(
            "Failed to process season page $seasonUrl: $error",
            error: error,
            stackTrace: stackTrace,
          );
          throw error;
        });

    seasonFutures.add(seasonFuture);
  }

  return await Future.wait(seasonFutures);
}

Future<List<Season>> fetchSeasons() async {
  log("Fetching seasons");
  final allSeasonsExceptLatest = await processSeasonUrl(
    "https://www.southparkstudios.nu/seasons/south-park",
  );
  final allSeasonsExceptFirst = await processSeasonUrl(
    "https://www.southparkstudios.nu${allSeasonsExceptLatest.first.url}",
  );

  final allSeasons = Set<Season>.from(
    allSeasonsExceptFirst + allSeasonsExceptLatest,
  ).toList();

  allSeasons.sort((a, b) => a.number.compareTo(b.number));

  log("Fetched ${allSeasons.length} seasons");

  return allSeasons;
}

Future<Episodes> fetchEpisodesForSeason(Season season) async {
  log(
    "Fetching episodes for season ${season.number} (${season.encodedSeasonId})",
  );
  final episodesResponse = await dio.get<String>(
    "https://www.southparkstudios.nu/api/context/${season.encodedSeasonId}/episode/1/30/ascending",
  );
  log(
    "Fetched episodes for season ${season.number} with status ${episodesResponse.statusCode}",
  );

  final json = jsonDecode(episodesResponse.data!) as Map<String, dynamic>;
  final itemCount = (json["items"] as List<dynamic>).length;

  // Remove entries, where the episode is not available
  // This can be looked up by checking if ["media"]["lockedLabel"] is not null
  json["items"].removeWhere(
    (episode) => episode["media"]["lockedLabel"] != null,
  );

  log(
    "Season ${season.number}: filtered ${itemCount - (json["items"] as List<dynamic>).length} locked episodes; ${json["items"].length} remain",
  );

  final episodes = Episodes.fromJson({
    "episodes": json["items"],
    "season": season.toJson(),
  });

  return episodes;
}

Future<List<Episodes>> fetchEpisodes(List<Season> seasons) async {
  log("Fetching episodes for ${seasons.length} seasons");
  final List<Future<Episodes>> futures = [];
  for (var season in seasons) {
    final future = fetchEpisodesForSeason(season);
    futures.add(future);
  }

  final results = await Future.wait(futures);
  results.sort((a, b) => a.season.number.compareTo(b.season.number));

  log("Fetched episodes for ${results.length} seasons");

  return results;
}

@riverpod
Future<List<Episodes>> episodes(Ref ref) async {
  // Start stopwatch
  Stopwatch stopwatch = Stopwatch()..start();

  final store = Storage.getStore();
  final db = await Storage.getDb();

  // TODO: Enable/Disable this line to clear the cache in case, the data structure has changed
  // await store.record("seasons").delete(db);

  final seasonRecords = await store.record("seasons").get(db) as List<Object?>?;
  var seasons = Season.fromJsonList(seasonRecords);

  if (seasons == null) {
    log("No cached seasons found; fetching seasons");
    seasons = await fetchSeasons();
    await store.record("seasons").put(db, Season.toJsonList(seasons));
    log("Cached ${seasons.length} seasons");
  } else {
    log("Loaded ${seasons.length} seasons from cache");
  }

  final episodes = await fetchEpisodes(seasons);

  log("Episodes fetched in ${stopwatch.elapsedMilliseconds}ms");

  return episodes;
}
