import 'package:bloc/bloc.dart';
import 'package:rick_and_morty/core/data/repositories/character_repositories/character_repository.dart';
import 'package:rick_and_morty/features/home/blocs/home_event.dart';
import 'package:rick_and_morty/features/home/blocs/home_state.dart';

import '../../../core/data/repositories/character_repositories/character_repository_interface.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ICharacterRepository _repo;

  HomeBloc({required ICharacterRepository repo})
    : _repo = repo,
      super(HomeState.initial()) {
    on<HomeLoading>(_onLoading);
    add(HomeLoading());
  }

  Future<void> _onLoading(HomeLoading event, Emitter<HomeState> emit) async {
    final details = await _repo.fetchCharacter();
    emit(state.copyWith(status: HomeStatus.idle, model: details));
  }
}
