import 'package:json_annotation/json_annotation.dart';

part 'location_character_model.g.dart';

@JsonSerializable()
class LocationCharacterModel {
  final String name;
  final String url;

  LocationCharacterModel({required this.name, required this.url});

  factory LocationCharacterModel.fromJson(Map<String, dynamic> json) =>
      _$LocationCharacterModelFromJson(json);
}
