import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/character_models/location_character_model.dart';
import 'package:rick_and_morty/core/data/models/character_models/origin_model.dart';

part 'character_result_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 8)
class CharacterResultModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String status;
  @HiveField(3)
  final String species;
  @HiveField(4)
  final String type;
  @HiveField(5)
  final String gender;
  @HiveField(6)
  final OriginModel origin;
  @HiveField(7)
  final LocationCharacterModel location;
  @HiveField(8)
  final List<String> episode;
  @HiveField(9)
  final String url;
  @HiveField(10)
  final String created;
  @HiveField(11)
  final String image;

  CharacterResultModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.episode,
    required this.url,
    required this.created,
    required this.image,
  });

  factory CharacterResultModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterResultModelFromJson(json);
}
