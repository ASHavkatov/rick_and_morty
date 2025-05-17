import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_character_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 9)
class LocationCharacterModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;

  LocationCharacterModel({required this.name, required this.url});

  factory LocationCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$LocationCharacterModelFromJson(json);
}
