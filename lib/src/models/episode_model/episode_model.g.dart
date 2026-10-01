// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EpisodeMediaImage _$EpisodeMediaImageFromJson(Map<String, dynamic> json) =>
    _EpisodeMediaImage(url: json['url'] as String);

Map<String, dynamic> _$EpisodeMediaImageToJson(_EpisodeMediaImage instance) =>
    <String, dynamic>{'url': instance.url};

_EpisodeMedia _$EpisodeMediaFromJson(Map<String, dynamic> json) =>
    _EpisodeMedia(
      duration: json['duration'] as String,
      image: EpisodeMediaImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodeMediaToJson(_EpisodeMedia instance) =>
    <String, dynamic>{'duration': instance.duration, 'image': instance.image};

_EpisodeMeta _$EpisodeMetaFromJson(Map<String, dynamic> json) => _EpisodeMeta(
  subHeader: json['subHeader'] as String,
  description: json['description'] as String,
  date: json['date'] as String,
  seasonMgid: json['seasonMgid'] as String,
);

Map<String, dynamic> _$EpisodeMetaToJson(_EpisodeMeta instance) =>
    <String, dynamic>{
      'subHeader': instance.subHeader,
      'description': instance.description,
      'date': instance.date,
      'seasonMgid': instance.seasonMgid,
    };

_Episode _$EpisodeFromJson(Map<String, dynamic> json) => _Episode(
  id: json['id'] as String,
  url: json['url'] as String,
  media: EpisodeMedia.fromJson(json['media'] as Map<String, dynamic>),
  meta: EpisodeMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EpisodeToJson(_Episode instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'media': instance.media,
  'meta': instance.meta,
};

_Episodes _$EpisodesFromJson(Map<String, dynamic> json) => _Episodes(
  episodes: (json['episodes'] as List<dynamic>)
      .map((e) => Episode.fromJson(e as Map<String, dynamic>))
      .toList(),
  season: Season.fromJson(json['season'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EpisodesToJson(_Episodes instance) => <String, dynamic>{
  'episodes': instance.episodes,
  'season': instance.season,
};

_EpisodesResponse _$EpisodesResponseFromJson(Map<String, dynamic> json) =>
    _EpisodesResponse(
      items: Episodes.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EpisodesResponseToJson(_EpisodesResponse instance) =>
    <String, dynamic>{'items': instance.items};
