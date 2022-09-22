// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playing_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListPopular,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getListPopular,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListPopular,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListPlaying value) getListPopular,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListPlaying value)? getListPopular,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListPlaying value)? getListPopular,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayingEventCopyWith<$Res> {
  factory $PlayingEventCopyWith(
          PlayingEvent value, $Res Function(PlayingEvent) then) =
      _$PlayingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayingEventCopyWithImpl<$Res> implements $PlayingEventCopyWith<$Res> {
  _$PlayingEventCopyWithImpl(this._value, this._then);

  final PlayingEvent _value;
  // ignore: unused_field
  final $Res Function(PlayingEvent) _then;
}

/// @nodoc
abstract class _$$GetListPlayingCopyWith<$Res> {
  factory _$$GetListPlayingCopyWith(
          _$GetListPlaying value, $Res Function(_$GetListPlaying) then) =
      __$$GetListPlayingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListPlayingCopyWithImpl<$Res>
    extends _$PlayingEventCopyWithImpl<$Res>
    implements _$$GetListPlayingCopyWith<$Res> {
  __$$GetListPlayingCopyWithImpl(
      _$GetListPlaying _value, $Res Function(_$GetListPlaying) _then)
      : super(_value, (v) => _then(v as _$GetListPlaying));

  @override
  _$GetListPlaying get _value => super._value as _$GetListPlaying;
}

/// @nodoc

class _$GetListPlaying implements GetListPlaying {
  const _$GetListPlaying();

  @override
  String toString() {
    return 'PlayingEvent.getListPopular()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetListPlaying);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListPopular,
  }) {
    return getListPopular();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getListPopular,
  }) {
    return getListPopular?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListPopular,
    required TResult orElse(),
  }) {
    if (getListPopular != null) {
      return getListPopular();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListPlaying value) getListPopular,
  }) {
    return getListPopular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListPlaying value)? getListPopular,
  }) {
    return getListPopular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListPlaying value)? getListPopular,
    required TResult orElse(),
  }) {
    if (getListPopular != null) {
      return getListPopular(this);
    }
    return orElse();
  }
}

abstract class GetListPlaying implements PlayingEvent {
  const factory GetListPlaying() = _$GetListPlaying;
}
