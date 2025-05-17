import 'package:hive/hive.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_model.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_interface.dart';

class CharacterRepositoryLocal implements ICharacterRepository{
  final Box<CharacterModel> box  = Hive.box<CharacterModel>("characters");

  @override
  Future<CharacterModel> fetchCharacter() async{
    final key="characters";
    final characters = box.get(key);
    return characters!;
  }
}