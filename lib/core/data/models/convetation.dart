
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_result_model.dart';

import 'info_model/info_model.dart';

class InfoConvertor extends JsonConverter<InfoModel, Map<String, dynamic>> {
  const InfoConvertor();

  @override
  InfoModel fromJson(Map<String, dynamic> json) {
    return InfoModel.fromJson(json);
  }

  Map<String, dynamic> convert(InfoModel input) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson(InfoModel object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

class ListResultModelConverter
    extends JsonConverter<List<CharacterResultModel>, List<dynamic>> {
  const ListResultModelConverter();

  @override
  List<CharacterResultModel> fromJson(List<dynamic> json) {
    return json
        .map((e) => CharacterResultModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List toJson(List<CharacterResultModel> object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
