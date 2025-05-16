import 'package:rick_and_morty/core/client.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_model.dart';

class CharacterRepository{
  final ApiClient client;
  CharacterRepository({required this.client});

  Future<CharacterModel>fetchCharacter()async{
    final rawCharacter = await client.fetchCharacter();
    final detail = CharacterModel.fromJson(rawCharacter);
    return detail;
  }
}