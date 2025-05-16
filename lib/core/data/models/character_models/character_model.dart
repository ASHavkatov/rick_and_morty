import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_result_model.dart';
import 'package:rick_and_morty/core/data/models/info_model/info_model.dart';
part 'character_model.g.dart';
@JsonSerializable()
class CharacterModel{
  // @InfoConvertor()
  final InfoModel info;
  // @ListResultModelConverter()
  final List<CharacterResultModel> results;

  CharacterModel({required this.info, required this.results});
  factory CharacterModel.fromJson(Map<String, dynamic >json)=> _$CharacterModelFromJson(json);
}