// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'popular_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopularEvent {
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
    required TResult Function(GetListPopular value) getListPopular,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListPopular value)? getListPopular,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListPopular value)? getListPopular,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularEventCopyWith<$Res> {
  factory $PopularEventCopyWith(
          PopularEvent value, $Res Function(PopularEvent) then) =
      _$PopularEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopularEventCopyWithImpl<$Res> implements $PopularEventCopyWith<$Res> {
  _$PopularEventCopyWithImpl(this._value, this._then);

  final PopularEvent _value;
  // ignore: unused_field
  final $Res Function(PopularEvent) _then;
}

/// @nodoc
abstract class _$$GetListPopularCopyWith<$Res> {
  factory _$$GetListPopularCopyWith(
          _$GetListPopular value, $Res Function(_$GetListPopular) then) =
      __$$GetListPopularCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListPopularCopyWithImpl<$Res>
    extends _$PopularEventCopyWithImpl<$Res>
    implements _$$GetListPopularCopyWith<$Res> {
  __$$GetListPopularCopyWithImpl(
      _$GetListPopular _value, $Res Function(_$GetListPopular) _then)
      : super(_value, (v) => _then(v as _$GetListPopular));

  @override
  _$GetListPopular get _value => super._value as _$GetListPopular;
}

/// @nodoc

class _$GetListPopular implements GetListPopular {
  const _$GetListPopular();

  @override
  String toString() {
    return 'PopularEvent.getListPopular()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetListPopular);
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
    required TResult Function(GetListPopular value) getListPopular,
  }) {
    return getListPopular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListPopular value)? getListPopular,
  }) {
    return getListPopular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListPopular value)? getListPopular,
    required TResult orElse(),
  }) {
    if (getListPopular != null) {
      return getListPopular(this);
    }
    return orElse();
  }
}

abstract class GetListPopular implements PopularEvent {
  const factory GetListPopular() = _$GetListPopular;
}
