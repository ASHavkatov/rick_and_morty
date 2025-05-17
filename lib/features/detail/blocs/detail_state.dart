import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/data/models/character_models/character_model.dart';
import '../../../core/data/models/character_models/character_result_model.dart';

part 'detail_state.freezed.dart';

enum DetailStatus { error, loading, idle }

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState({
    required CharacterResultModel? model,
    required DetailStatus status,
  }) = _DetailState;

  factory DetailState.initial() {
    return DetailState(model: null, status: DetailStatus.loading);
  }
}
