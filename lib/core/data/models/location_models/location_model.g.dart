// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      result:
          (json['result'] as List<dynamic>)
              .map(
                (e) => LocationResultModel.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{'info': instance.info, 'result': instance.result};
