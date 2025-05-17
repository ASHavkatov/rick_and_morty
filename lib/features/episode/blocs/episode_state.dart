import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/data/models/episode_models/episode_result_model.dart';
part 'episode_state.freezed.dart';
enum EpisodeStatus{error, loading, idle}

@freezed
abstract class EpisodeState with _$EpisodeState{
  const factory EpisodeState({
    required EpisodeResultModel? model,
    required EpisodeStatus status,
}) = _EpisodeState;

  factory EpisodeState.initial(){
    return EpisodeState(model: null, status: EpisodeStatus.loading);
  }
}