import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/screens/video_screen/video_player_controls.dart';
import 'package:kenny_tv/src/utils/dio.dart';
import 'package:video_player/video_player.dart' as flutter_video_player;

class VideoPlayer extends ConsumerStatefulWidget {
  final Episode episode;
  final Episode nextEpisode;

  const VideoPlayer({
    super.key,
    required this.episode,
    required this.nextEpisode,
  });

  @override
  ConsumerState<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends ConsumerState<VideoPlayer> {
  flutter_video_player.VideoPlayerController? _videoPlayerController;
  Timer? _switchControllerTimer;
  bool _errorWhileInit = false;

  Future<String> _fetchVideoBlobId() async {
    final rawEpisodeUrl = widget.episode.url.trim();
    final parsedEpisodeUrl = Uri.tryParse(rawEpisodeUrl);
    if (parsedEpisodeUrl == null || rawEpisodeUrl.isEmpty) {
      throw StateError(
        "Episode has an invalid page URL for ${widget.episode.id}: ${widget.episode.url}",
      );
    }
    final episodeUrl = parsedEpisodeUrl.hasScheme
        ? parsedEpisodeUrl
        : Uri.parse("https://www.southparkstudios.nu$rawEpisodeUrl");
    if (episodeUrl.host.isEmpty) {
      throw StateError(
        "Episode has an invalid page URL for ${widget.episode.id}: ${widget.episode.url}",
      );
    }

    log("Fetching episode page ${episodeUrl.toString()}");
    final episodePage = await dio.get<String>(episodeUrl.toString());
    final html = episodePage.data;
    if (html == null || html.isEmpty) {
      throw StateError(
        "Episode page returned no HTML for ${widget.episode.url}",
      );
    }

    final document = html_parser.parse(html);
    for (final script in document.querySelectorAll("script")) {
      final scriptText = script.text;
      final dataStart = scriptText.indexOf("window.__DATA_");
      if (dataStart == -1) {
        continue;
      }

      final assignmentStart = scriptText.indexOf("=", dataStart);
      if (assignmentStart == -1) {
        continue;
      }

      var jsonText = scriptText.substring(assignmentStart + 1).trim();
      if (jsonText.endsWith(";")) {
        jsonText = jsonText.substring(0, jsonText.length - 1).trim();
      }

      final data = _decodeDataPayload(jsonText);
      if (data is! Map<String, dynamic>) {
        throw StateError("Episode page __DATA_ payload was not an object");
      }

      final videoDetail = _findVideoDetail(data);
      final videoId = videoDetail?["id"];
      if (videoId is String && videoId.isNotEmpty) {
        return videoId;
      }
      throw StateError(
        "Episode page __DATA_ has no valid videoDetail.id for ${widget.episode.id}",
      );
    }

    throw StateError(
      "Episode page has no window.__DATA_ payload for ${widget.episode.id}",
    );
  }

  Object? _decodeDataPayload(String jsonText) {
    try {
      return jsonDecode(jsonText);
    } on FormatException {
      final objectStart = jsonText.indexOf("{");
      final objectEnd = jsonText.lastIndexOf("}");
      if (objectStart == -1 || objectEnd <= objectStart) {
        rethrow;
      }
      return jsonDecode(jsonText.substring(objectStart, objectEnd + 1));
    }
  }

  Map<String, dynamic>? _findVideoDetail(Object? value) {
    if (value is Map<String, dynamic>) {
      final videoDetail = value["videoDetail"];
      if (videoDetail is Map<String, dynamic>) {
        return videoDetail;
      }
      for (final child in value.values) {
        final result = _findVideoDetail(child);
        if (result != null) {
          return result;
        }
      }
    } else if (value is List<dynamic>) {
      for (final child in value) {
        final result = _findVideoDetail(child);
        if (result != null) {
          return result;
        }
      }
    }
    return null;
  }

  Future<void> initVideoPlayer() async {
    try {
      log("Initializing video player for episode ${widget.episode.id}");
      //final videoBlobId = await _fetchVideoBlobId();
      //log("Found video blob $videoBlobId for episode ${widget.episode.id}");
      final episodeMediaInfo = await dio.get(
        "https://topaz.paramount.tech/topaz/api/mgid:arc:episode:shared.southpark.nordics:${widget.episode.id}/mica.json?clientPlatform=desktop",
      );
      final episodeMediaInfoJson = episodeMediaInfo.data;
      if (episodeMediaInfoJson is! Map<String, dynamic>) {
        throw StateError(
          "Media metadata response was not an object: ${episodeMediaInfoJson.runtimeType}",
        );
      }

      final stitchedStream = episodeMediaInfoJson["stitchedstream"];
      if (stitchedStream is! Map<String, dynamic>) {
        final apiError = episodeMediaInfoJson["error"];
        final errorDetails = apiError == null ? "" : ": $apiError";
        throw StateError(
          "Media metadata has no stitchedstream for episode ${widget.episode.id}$errorDetails. Available fields: ${episodeMediaInfoJson.keys.join(", ")}",
        );
      }

      final masterUrl = stitchedStream["source"];
      if (masterUrl is! String || masterUrl.isEmpty) {
        throw StateError(
          "Media metadata has no valid stitchedstream source for episode ${widget.episode.id}",
        );
      }

      _videoPlayerController =
          flutter_video_player.VideoPlayerController.networkUrl(
            Uri.parse(masterUrl),
            formatHint: flutter_video_player.VideoFormat.hls,
          );

      await _videoPlayerController!.initialize();
      if (!mounted) {
        return;
      }
      await _videoPlayerController!.play();
      log("Started playback for episode ${widget.episode.id}");
    } catch (e) {
      log("Video initialization failed for episode ${widget.episode.id}: $e");
      if (!mounted) {
        return;
      }
      setState(() {
        _errorWhileInit = true;
      });
    }

    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initVideoPlayer();
  }

  @override
  void dispose() {
    log("Disposing video player");
    _videoPlayerController?.dispose();
    _switchControllerTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_errorWhileInit) {
      return const Center(child: Text("Unable to play this episode"));
    }

    if (_videoPlayerController != null) {
      return Stack(
        children: [
          AspectRatio(
            aspectRatio: _videoPlayerController!.value.aspectRatio,
            child: flutter_video_player.VideoPlayer(_videoPlayerController!),
          ),
          VideoPlayerControls(
            controller: _videoPlayerController!,
            episode: widget.episode,
            nextEpisode: widget.nextEpisode,
          ),
        ],
      );
    }

    return const CircularProgressIndicator();
  }
}
