import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/data/models/character_models/character_model.dart';

part 'home_state.freezed.dart';

enum HomeStatus { error, loading, idle }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required CharacterModel? model,
    required HomeStatus status,
  }) = _HomeState;

  factory HomeState.initial(){
return HomeState(model: null, status: HomeStatus.loading);
  }
}
