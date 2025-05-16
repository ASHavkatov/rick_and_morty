import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/data/repositories/character_repository.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_event.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final CharacterRepository _repo;

  DetailBloc({required CharacterRepository repo})
    : _repo = repo,
      super(DetailState.initial()
      ){
    on<DetailLoading>(_onLoading);
    add(DetailLoading());
  }

  Future<void> _onLoading(DetailLoading event, Emitter<DetailState> emit)async{
    final details = await _repo.fetchCharacter();
    emit(state.copyWith(status: DetailStatus.idle, model: details));
  }

}
