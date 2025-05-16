import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_model.dart';

part 'episode_result_model.g.dart';

@JsonSerializable()
class EpisodeResultModel {
  final int id;
  final String info;
  final String name;
  @JsonKey(name: "air_date")
  final String airDate;
  final CharacterModel characters;
  final String url;

  final String created;

  EpisodeResultModel({
    required this.id,
    required this.name,
    required this.airDate,
    required this.characters,
    required this.url,
    required this.created,
    required this.info,
  });

  factory EpisodeResultModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResultModelFromJson(json);
}
