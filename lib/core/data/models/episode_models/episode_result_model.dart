import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_result_model.dart';

part 'episode_result_model.g.dart';

@JsonSerializable()
class EpisodeResultModel {
  final int id;
  final String name;

  @JsonKey(name: "air_date")
  final String airDate;
  final String episode;

  final List<String> characters;
  final String url;
  final String created;

  EpisodeResultModel({
    required this.id,
    required this.name,
    required this.airDate,
    required this.characters,
    required this.url,
    required this.created,
    required this.episode
  });

  factory EpisodeResultModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeResultModelToJson(this);

  @override
  String toString() {
    return 'EpisodeResultModel(id: $id, name: $name, airDate: $airDate, characters: $characters, url: $url, created: $created)';
  }
}

