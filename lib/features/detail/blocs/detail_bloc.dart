import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/data/repositories/detail_repository.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_event.dart';
import 'package:rick_and_morty/features/detail/blocs/detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final DetailRepository _repo;

  DetailBloc({required DetailRepository repo})
    : _repo = repo,
      super(DetailState.initial()
      ){
    on<DetailLoading>(_onLoading);
  }

  Future<void> _onLoading(DetailLoading event, Emitter<DetailState> emit) async {
    try {
      final details = await _repo.fetchDetail(event.id);
      emit(state.copyWith(status: DetailStatus.idle, model: details));
    } catch (e) {
      emit(state.copyWith(status: DetailStatus.error));
    }
  }

}
