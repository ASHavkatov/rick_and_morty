import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rick_and_morty/core/dependencies.dart';
import 'package:rick_and_morty/core/routing/router.dart';

import 'core/data/models/adapters.dart';
import 'core/data/models/character_models/character_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cacheDir = await getApplicationCacheDirectory();
  Hive.init(cacheDir.path);
  Hive.registerAdapter(InfoModelAdapter());
  Hive.registerAdapter(CharacterResultModelAdapter());
  Hive.registerAdapter(OriginModelAdapter());
  Hive.registerAdapter(CharacterModelAdapter());
  Hive.registerAdapter(EpisodeModelAdapter());
  Hive.registerAdapter(EpisodeResultModelAdapter());
  Hive.registerAdapter(LocationModelAdapter());
  Hive.registerAdapter(LocationResultModelAdapter());
  Hive.registerAdapter(LocationCharacterModelAdapter());

  await Hive.openBox<CharacterModel>("characters");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: MultiBlocProvider(
        providers: providers,
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: router,
            );
          },
        ),
      ),
    );
  }
}
