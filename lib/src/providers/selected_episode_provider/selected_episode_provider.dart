import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kenny_tv/src/models/episode_model/episode_model.dart';

class SelectedEpisodeNotifier extends Notifier<Episode?> {
  @override
  Episode? build() => null;

  void setEpisode(Episode episode) {
    state = episode;
  }
}

final selectedEpisodeProvider =
    NotifierProvider<SelectedEpisodeNotifier, Episode?>(SelectedEpisodeNotifier.new);
