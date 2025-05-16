// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationResultModel _$LocationResultModelFromJson(Map<String, dynamic> json) =>
    LocationResultModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      dimension: json['dimension'] as String,
      residents:
          (json['residents'] as List<dynamic>).map((e) => e as String).toList(),
      created: json['created'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$LocationResultModelToJson(
  LocationResultModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'dimension': instance.dimension,
  'residents': instance.residents,
  'url': instance.url,
  'created': instance.created,
};
