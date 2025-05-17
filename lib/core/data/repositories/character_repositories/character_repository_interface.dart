import '../../models/character_models/character_model.dart';

abstract interface class ICharacterRepository {
  Future<CharacterModel> fetchCharacter();
}
