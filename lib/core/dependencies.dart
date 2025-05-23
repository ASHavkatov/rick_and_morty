import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rick_and_morty/core/client.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_interface.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_local.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository_remote.dart';
import 'package:rick_and_morty/core/data/repositories/detail_repository.dart';
import 'package:rick_and_morty/core/data/repositories/episode_repository.dart';
import 'package:rick_and_morty/core/data/repositories/location_repository.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => LocationRepository(client: context.read())),
  // Provider(create: (context) => CharacterRepository(client: context.read())),
  Provider(create: (context) => EpisodeRepository(client: context.read())),
  Provider(create: (context) => DetailRepository(client: context.read())),
  RepositoryProvider(create: (context) => CharacterRepositoryLocal()),
  RepositoryProvider(create: (context) => CharacterRepositoryRemote(client: context.read()),),
  RepositoryProvider<ICharacterRepository>(
    create:
        (context) => CharacterRepository(
          remoteCharacter: context.read(),
          localCharacter: context.read(),
        ),
  ),
];
