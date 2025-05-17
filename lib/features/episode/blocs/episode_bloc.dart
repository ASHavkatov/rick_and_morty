import 'package:bloc/bloc.dart';
import 'package:rick_and_morty/core/data/repositories/episode_repository.dart';
import 'package:rick_and_morty/features/episode/blocs/apisode_event.dart';
import 'package:rick_and_morty/features/episode/blocs/episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  final EpisodeRepository _repo;

  EpisodeBloc({required EpisodeRepository repo})
    : _repo = repo,
      super(EpisodeState.initial()) {
    on<EpisodeLoading>(_onLoading);
  }

  Future<void> _onLoading(
    EpisodeLoading event,
    Emitter<EpisodeState> emit,
  ) async {
    final details = await _repo.fetchEpisode(event.id);
    emit(state.copyWith(status: EpisodeStatus.idle, model: details));
  }
}
