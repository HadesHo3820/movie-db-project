// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_cast_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieCastEvent {
  String get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getMovieCast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getMovieCast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getMovieCast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieCast value) getMovieCast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieCast value)? getMovieCast,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieCast value)? getMovieCast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCastEventCopyWith<MovieCastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastEventCopyWith<$Res> {
  factory $MovieCastEventCopyWith(
          MovieCastEvent value, $Res Function(MovieCastEvent) then) =
      _$MovieCastEventCopyWithImpl<$Res>;
  $Res call({String movieId});
}

/// @nodoc
class _$MovieCastEventCopyWithImpl<$Res>
    implements $MovieCastEventCopyWith<$Res> {
  _$MovieCastEventCopyWithImpl(this._value, this._then);

  final MovieCastEvent _value;
  // ignore: unused_field
  final $Res Function(MovieCastEvent) _then;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetMovieCastCopyWith<$Res>
    implements $MovieCastEventCopyWith<$Res> {
  factory _$$GetMovieCastCopyWith(
          _$GetMovieCast value, $Res Function(_$GetMovieCast) then) =
      __$$GetMovieCastCopyWithImpl<$Res>;
  @override
  $Res call({String movieId});
}

/// @nodoc
class __$$GetMovieCastCopyWithImpl<$Res>
    extends _$MovieCastEventCopyWithImpl<$Res>
    implements _$$GetMovieCastCopyWith<$Res> {
  __$$GetMovieCastCopyWithImpl(
      _$GetMovieCast _value, $Res Function(_$GetMovieCast) _then)
      : super(_value, (v) => _then(v as _$GetMovieCast));

  @override
  _$GetMovieCast get _value => super._value as _$GetMovieCast;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$GetMovieCast(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMovieCast implements GetMovieCast {
  const _$GetMovieCast({required this.movieId});

  @override
  final String movieId;

  @override
  String toString() {
    return 'MovieCastEvent.getMovieCast(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieCast &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  _$$GetMovieCastCopyWith<_$GetMovieCast> get copyWith =>
      __$$GetMovieCastCopyWithImpl<_$GetMovieCast>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getMovieCast,
  }) {
    return getMovieCast(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getMovieCast,
  }) {
    return getMovieCast?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getMovieCast,
    required TResult orElse(),
  }) {
    if (getMovieCast != null) {
      return getMovieCast(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieCast value) getMovieCast,
  }) {
    return getMovieCast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieCast value)? getMovieCast,
  }) {
    return getMovieCast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieCast value)? getMovieCast,
    required TResult orElse(),
  }) {
    if (getMovieCast != null) {
      return getMovieCast(this);
    }
    return orElse();
  }
}

abstract class GetMovieCast implements MovieCastEvent {
  const factory GetMovieCast({required final String movieId}) = _$GetMovieCast;

  @override
  String get movieId;
  @override
  @JsonKey(ignore: true)
  _$$GetMovieCastCopyWith<_$GetMovieCast> get copyWith =>
      throw _privateConstructorUsedError;
}
