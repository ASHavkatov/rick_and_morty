import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/episode_models/episode_result_model.dart';
import 'package:rick_and_morty/core/data/models/info_model/info_model.dart';
part 'episode_model.g.dart';
@JsonSerializable()

class EpisodeModel{
  final InfoModel info;
  final List<EpisodeResultModel> result;
  EpisodeModel({required this.info, required this.result});
  factory EpisodeModel.fromJson(Map<String, dynamic>json)=> _$EpisodeModelFromJson(json);
}

