import 'package:rick_and_morty/core/client.dart';

import '../models/character_models/character_result_model.dart';

class DetailRepository{
  final ApiClient client;
  DetailRepository({required this.client});

  Future<CharacterResultModel>fetchDetail(int id)async{
    final rawDetail = await client.fetchDetail(id);
    final detail = CharacterResultModel.fromJson(rawDetail);
    print("${detail}");
    return detail;
  }
}