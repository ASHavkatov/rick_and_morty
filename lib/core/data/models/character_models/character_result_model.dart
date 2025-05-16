import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/character_models/location_character_model.dart';
import 'package:rick_and_morty/core/data/models/character_models/origin_model.dart';

part 'character_result_model.g.dart';

@JsonSerializable()
class CharacterResultModel {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final OriginModel origin;
  final LocationCharacterModel location;
  final List<String> episode;
  final String url;
  final String created;
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
    required this.image
  });

  factory CharacterResultModel.fromJson(Map<String, dynamic>json)=> _$CharacterResultModelFromJson(json);
}
