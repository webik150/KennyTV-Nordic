import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';
import 'package:kenny_tv/src/utils/dio.dart';
import 'package:pro_video_player/pro_video_player.dart' as flutter_video_player;

class VideoPlayer extends ConsumerStatefulWidget {
  final Episode episode;
  final Episode nextEpisode;

  const VideoPlayer({
    super.key,
    required this.episode,
    required this.nextEpisode
  });

  @override
  ConsumerState<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends ConsumerState<VideoPlayer> {
  flutter_video_player.ProVideoPlayerController? _videoPlayerController;
  Timer? _switchControllerTimer;
  bool _errorWhileInit = false;

  Future<void> initVideoPlayer() async {
    try {
      log("Initializing video player for episode ${widget.episode.id}");
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
          flutter_video_player.ProVideoPlayerController.network(masterUrl);

      await _videoPlayerController!.initialize(source: flutter_video_player.VideoSource.playlist(masterUrl), options: flutter_video_player.VideoPlayerOptions(autoDiscoverSubtitles: true));
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
      final player = flutter_video_player.ProVideoPlayer(controller:_videoPlayerController!, controlsMode: flutter_video_player.ControlsMode.flutter,);
      return player;
    }

    return const CircularProgressIndicator();
  }
}
