// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcoming_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpcomingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getListUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListUpcoming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListUpcoming value) getListUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListUpcoming value)? getListUpcoming,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListUpcoming value)? getListUpcoming,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingEventCopyWith<$Res> {
  factory $UpcomingEventCopyWith(
          UpcomingEvent value, $Res Function(UpcomingEvent) then) =
      _$UpcomingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpcomingEventCopyWithImpl<$Res>
    implements $UpcomingEventCopyWith<$Res> {
  _$UpcomingEventCopyWithImpl(this._value, this._then);

  final UpcomingEvent _value;
  // ignore: unused_field
  final $Res Function(UpcomingEvent) _then;
}

/// @nodoc
abstract class _$$GetListUpcomingCopyWith<$Res> {
  factory _$$GetListUpcomingCopyWith(
          _$GetListUpcoming value, $Res Function(_$GetListUpcoming) then) =
      __$$GetListUpcomingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListUpcomingCopyWithImpl<$Res>
    extends _$UpcomingEventCopyWithImpl<$Res>
    implements _$$GetListUpcomingCopyWith<$Res> {
  __$$GetListUpcomingCopyWithImpl(
      _$GetListUpcoming _value, $Res Function(_$GetListUpcoming) _then)
      : super(_value, (v) => _then(v as _$GetListUpcoming));

  @override
  _$GetListUpcoming get _value => super._value as _$GetListUpcoming;
}

/// @nodoc

class _$GetListUpcoming implements GetListUpcoming {
  const _$GetListUpcoming();

  @override
  String toString() {
    return 'UpcomingEvent.getListUpcoming()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetListUpcoming);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListUpcoming,
  }) {
    return getListUpcoming();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getListUpcoming,
  }) {
    return getListUpcoming?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListUpcoming,
    required TResult orElse(),
  }) {
    if (getListUpcoming != null) {
      return getListUpcoming();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListUpcoming value) getListUpcoming,
  }) {
    return getListUpcoming(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListUpcoming value)? getListUpcoming,
  }) {
    return getListUpcoming?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListUpcoming value)? getListUpcoming,
    required TResult orElse(),
  }) {
    if (getListUpcoming != null) {
      return getListUpcoming(this);
    }
    return orElse();
  }
}

abstract class GetListUpcoming implements UpcomingEvent {
  const factory GetListUpcoming() = _$GetListUpcoming;
}
