import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rick_and_morty/core/data/models/character_models/character_model.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_interface.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_local.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_remote.dart';

class CharacterRepository implements ICharacterRepository {
  final CharacterRepositoryRemote remoteCharacter;
  final CharacterRepositoryLocal localCharacter;

  CharacterRepository({
    required this.remoteCharacter,
    required this.localCharacter,
  });
  @override
  Future<CharacterModel>fetchCharacter()async{

      final isConnect = await Connectivity().checkConnectivity();
      final isOnline = isConnect.contains(
          ConnectivityResult.mobile
      ) || isConnect.contains(
        ConnectivityResult.wifi,
      );
      if (isOnline) {
        return await remoteCharacter.fetchCharacter();
      }  else{
        return await localCharacter.fetchCharacter();
      }

    }

  }

