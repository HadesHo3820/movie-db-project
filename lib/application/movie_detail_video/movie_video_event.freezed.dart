// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_video_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieVideoEvent {
  String get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getListMovieVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMovieVideo value) getListMovieVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListMovieVideo value)? getListMovieVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMovieVideo value)? getListMovieVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieVideoEventCopyWith<MovieVideoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideoEventCopyWith<$Res> {
  factory $MovieVideoEventCopyWith(
          MovieVideoEvent value, $Res Function(MovieVideoEvent) then) =
      _$MovieVideoEventCopyWithImpl<$Res>;
  $Res call({String movieId});
}

/// @nodoc
class _$MovieVideoEventCopyWithImpl<$Res>
    implements $MovieVideoEventCopyWith<$Res> {
  _$MovieVideoEventCopyWithImpl(this._value, this._then);

  final MovieVideoEvent _value;
  // ignore: unused_field
  final $Res Function(MovieVideoEvent) _then;

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
abstract class _$$GetListMovieVideoCopyWith<$Res>
    implements $MovieVideoEventCopyWith<$Res> {
  factory _$$GetListMovieVideoCopyWith(
          _$GetListMovieVideo value, $Res Function(_$GetListMovieVideo) then) =
      __$$GetListMovieVideoCopyWithImpl<$Res>;
  @override
  $Res call({String movieId});
}

/// @nodoc
class __$$GetListMovieVideoCopyWithImpl<$Res>
    extends _$MovieVideoEventCopyWithImpl<$Res>
    implements _$$GetListMovieVideoCopyWith<$Res> {
  __$$GetListMovieVideoCopyWithImpl(
      _$GetListMovieVideo _value, $Res Function(_$GetListMovieVideo) _then)
      : super(_value, (v) => _then(v as _$GetListMovieVideo));

  @override
  _$GetListMovieVideo get _value => super._value as _$GetListMovieVideo;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$GetListMovieVideo(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetListMovieVideo implements GetListMovieVideo {
  const _$GetListMovieVideo({required this.movieId});

  @override
  final String movieId;

  @override
  String toString() {
    return 'MovieVideoEvent.getListMovieVideo(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListMovieVideo &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  _$$GetListMovieVideoCopyWith<_$GetListMovieVideo> get copyWith =>
      __$$GetListMovieVideoCopyWithImpl<_$GetListMovieVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getListMovieVideo,
  }) {
    return getListMovieVideo(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieVideo,
  }) {
    return getListMovieVideo?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieVideo,
    required TResult orElse(),
  }) {
    if (getListMovieVideo != null) {
      return getListMovieVideo(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMovieVideo value) getListMovieVideo,
  }) {
    return getListMovieVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListMovieVideo value)? getListMovieVideo,
  }) {
    return getListMovieVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMovieVideo value)? getListMovieVideo,
    required TResult orElse(),
  }) {
    if (getListMovieVideo != null) {
      return getListMovieVideo(this);
    }
    return orElse();
  }
}

abstract class GetListMovieVideo implements MovieVideoEvent {
  const factory GetListMovieVideo({required final String movieId}) =
      _$GetListMovieVideo;

  @override
  String get movieId;
  @override
  @JsonKey(ignore: true)
  _$$GetListMovieVideoCopyWith<_$GetListMovieVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
