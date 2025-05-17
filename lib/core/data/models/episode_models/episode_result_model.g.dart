// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeResultModel _$EpisodeResultModelFromJson(Map<String, dynamic> json) =>
    EpisodeResultModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      airDate: json['air_date'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
      created: json['created'] as String,
      episode: json['episode'] as String,
    );

Map<String, dynamic> _$EpisodeResultModelToJson(EpisodeResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.airDate,
      'episode': instance.episode,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created,
    };
