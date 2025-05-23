// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterResultModel _$CharacterResultModelFromJson(
        Map<String, dynamic> json) =>
    CharacterResultModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: OriginModel.fromJson(json['origin'] as Map<String, dynamic>),
      location: LocationCharacterModel.fromJson(
          json['location'] as Map<String, dynamic>),
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: json['created'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CharacterResultModelToJson(
        CharacterResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
      'image': instance.image,
    };
