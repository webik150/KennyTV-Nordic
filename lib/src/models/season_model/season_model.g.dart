// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Season _$SeasonFromJson(Map<String, dynamic> json) => _Season(
  url: json['url'] as String,
  shortId: json['shortId'] as String,
  number: (json['number'] as num).toInt(),
  seasonId: json['seasonId'] as String,
  encodedSeasonId: json['encodedSeasonId'] as String,
);

Map<String, dynamic> _$SeasonToJson(_Season instance) => <String, dynamic>{
  'url': instance.url,
  'shortId': instance.shortId,
  'number': instance.number,
  'seasonId': instance.seasonId,
  'encodedSeasonId': instance.encodedSeasonId,
};
