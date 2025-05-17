// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EpisodeState {

 EpisodeResultModel? get model; EpisodeStatus get status;
/// Create a copy of EpisodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpisodeStateCopyWith<EpisodeState> get copyWith => _$EpisodeStateCopyWithImpl<EpisodeState>(this as EpisodeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EpisodeState&&(identical(other.model, model) || other.model == model)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,model,status);

@override
String toString() {
  return 'EpisodeState(model: $model, status: $status)';
}


}

/// @nodoc
abstract mixin class $EpisodeStateCopyWith<$Res>  {
  factory $EpisodeStateCopyWith(EpisodeState value, $Res Function(EpisodeState) _then) = _$EpisodeStateCopyWithImpl;
@useResult
$Res call({
 EpisodeResultModel? model, EpisodeStatus status
});




}
/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._self, this._then);

  final EpisodeState _self;
  final $Res Function(EpisodeState) _then;

/// Create a copy of EpisodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? model = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as EpisodeResultModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EpisodeStatus,
  ));
}

}


/// @nodoc


class _EpisodeState implements EpisodeState {
  const _EpisodeState({required this.model, required this.status});
  

@override final  EpisodeResultModel? model;
@override final  EpisodeStatus status;

/// Create a copy of EpisodeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpisodeStateCopyWith<_EpisodeState> get copyWith => __$EpisodeStateCopyWithImpl<_EpisodeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EpisodeState&&(identical(other.model, model) || other.model == model)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,model,status);

@override
String toString() {
  return 'EpisodeState(model: $model, status: $status)';
}


}

/// @nodoc
abstract mixin class _$EpisodeStateCopyWith<$Res> implements $EpisodeStateCopyWith<$Res> {
  factory _$EpisodeStateCopyWith(_EpisodeState value, $Res Function(_EpisodeState) _then) = __$EpisodeStateCopyWithImpl;
@override @useResult
$Res call({
 EpisodeResultModel? model, EpisodeStatus status
});




}
/// @nodoc
class __$EpisodeStateCopyWithImpl<$Res>
    implements _$EpisodeStateCopyWith<$Res> {
  __$EpisodeStateCopyWithImpl(this._self, this._then);

  final _EpisodeState _self;
  final $Res Function(_EpisodeState) _then;

/// Create a copy of EpisodeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? model = freezed,Object? status = null,}) {
  return _then(_EpisodeState(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as EpisodeResultModel?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EpisodeStatus,
  ));
}


}

// dart format on
