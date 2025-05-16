import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/core/routing/routes.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_bloc.dart';
import 'package:rick_and_morty/features/detail/pages/detail_screen.dart';
import 'package:rick_and_morty/features/home/blocs/home_bloc.dart';
import 'package:rick_and_morty/features/home/pages/home_view.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.getDetail(2),
  routes: [
    GoRoute(
      path: Routes.home,
      builder:
          (context, state) => BlocProvider(
            create: (context) => HomeBloc(repo: context.read()),
            child: HomeScreen(),
          ),
    ),
    GoRoute(
      path: Routes.detail,
      builder:
          (context, state) => BlocProvider(
            create: (context) => DetailBloc(repo: context.read()),
            child: DetailScreen(),
          ),
    ),
  ],
);
