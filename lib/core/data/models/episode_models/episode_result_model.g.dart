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
      characters: CharacterModel.fromJson(
        json['characters'] as Map<String, dynamic>,
      ),
      url: json['url'] as String,
      created: json['created'] as String,
      info: json['info'] as String,
    );

Map<String, dynamic> _$EpisodeResultModelToJson(EpisodeResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info,
      'name': instance.name,
      'air_date': instance.airDate,
      'characters': instance.characters,
      'url': instance.url,
      'created': instance.created,
    };
