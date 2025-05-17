import 'package:hive/hive.dart';

import '../../../client.dart';
import '../../models/character_models/character_model.dart';
import 'character_repository_interface.dart';

class CharacterRepositoryRemote implements ICharacterRepository {
  final ApiClient client;

  CharacterRepositoryRemote({required this.client});

  @override
  Future<CharacterModel> fetchCharacter() async {
    final Box<CharacterModel> box = Hive.box<CharacterModel>("characters");
    final rawCharacters = await client.fetchCharacter();
    final characters = CharacterModel.fromJson(rawCharacters);
    await box.clear();
    await box.add(characters);
    return characters;
  }
}
