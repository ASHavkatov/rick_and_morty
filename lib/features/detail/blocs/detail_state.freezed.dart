// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailState {
  CharacterResultModel? get model;
  DetailStatus get status;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailStateCopyWith<DetailState> get copyWith =>
      _$DetailStateCopyWithImpl<DetailState>(this as DetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailState &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, status);

  @override
  String toString() {
    return 'DetailState(model: $model, status: $status)';
  }
}

/// @nodoc
abstract mixin class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) _then) =
      _$DetailStateCopyWithImpl;
  @useResult
  $Res call({CharacterResultModel? model, DetailStatus status});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res> implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._self, this._then);

  final DetailState _self;
  final $Res Function(DetailState) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as CharacterResultModel?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
    ));
  }
}

/// @nodoc

class _DetailState implements DetailState {
  const _DetailState({required this.model, required this.status});

  @override
  final CharacterResultModel? model;
  @override
  final DetailStatus status;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailStateCopyWith<_DetailState> get copyWith =>
      __$DetailStateCopyWithImpl<_DetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailState &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, status);

  @override
  String toString() {
    return 'DetailState(model: $model, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$DetailStateCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$DetailStateCopyWith(
          _DetailState value, $Res Function(_DetailState) _then) =
      __$DetailStateCopyWithImpl;
  @override
  @useResult
  $Res call({CharacterResultModel? model, DetailStatus status});
}

/// @nodoc
class __$DetailStateCopyWithImpl<$Res> implements _$DetailStateCopyWith<$Res> {
  __$DetailStateCopyWithImpl(this._self, this._then);

  final _DetailState _self;
  final $Res Function(_DetailState) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? model = freezed,
    Object? status = null,
  }) {
    return _then(_DetailState(
      model: freezed == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as CharacterResultModel?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
    ));
  }
}

// dart format on
