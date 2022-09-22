// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_image_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieImageEvent {
  String get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getListMovieImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMovieImage value) getListMovieImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListMovieImage value)? getListMovieImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMovieImage value)? getListMovieImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieImageEventCopyWith<MovieImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageEventCopyWith<$Res> {
  factory $MovieImageEventCopyWith(
          MovieImageEvent value, $Res Function(MovieImageEvent) then) =
      _$MovieImageEventCopyWithImpl<$Res>;
  $Res call({String movieId});
}

/// @nodoc
class _$MovieImageEventCopyWithImpl<$Res>
    implements $MovieImageEventCopyWith<$Res> {
  _$MovieImageEventCopyWithImpl(this._value, this._then);

  final MovieImageEvent _value;
  // ignore: unused_field
  final $Res Function(MovieImageEvent) _then;

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
abstract class _$$GetListMovieImageCopyWith<$Res>
    implements $MovieImageEventCopyWith<$Res> {
  factory _$$GetListMovieImageCopyWith(
          _$GetListMovieImage value, $Res Function(_$GetListMovieImage) then) =
      __$$GetListMovieImageCopyWithImpl<$Res>;
  @override
  $Res call({String movieId});
}

/// @nodoc
class __$$GetListMovieImageCopyWithImpl<$Res>
    extends _$MovieImageEventCopyWithImpl<$Res>
    implements _$$GetListMovieImageCopyWith<$Res> {
  __$$GetListMovieImageCopyWithImpl(
      _$GetListMovieImage _value, $Res Function(_$GetListMovieImage) _then)
      : super(_value, (v) => _then(v as _$GetListMovieImage));

  @override
  _$GetListMovieImage get _value => super._value as _$GetListMovieImage;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$GetListMovieImage(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetListMovieImage implements GetListMovieImage {
  const _$GetListMovieImage({required this.movieId});

  @override
  final String movieId;

  @override
  String toString() {
    return 'MovieImageEvent.getListMovieImage(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListMovieImage &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  _$$GetListMovieImageCopyWith<_$GetListMovieImage> get copyWith =>
      __$$GetListMovieImageCopyWithImpl<_$GetListMovieImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieId) getListMovieImage,
  }) {
    return getListMovieImage(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieImage,
  }) {
    return getListMovieImage?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieId)? getListMovieImage,
    required TResult orElse(),
  }) {
    if (getListMovieImage != null) {
      return getListMovieImage(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetListMovieImage value) getListMovieImage,
  }) {
    return getListMovieImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetListMovieImage value)? getListMovieImage,
  }) {
    return getListMovieImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetListMovieImage value)? getListMovieImage,
    required TResult orElse(),
  }) {
    if (getListMovieImage != null) {
      return getListMovieImage(this);
    }
    return orElse();
  }
}

abstract class GetListMovieImage implements MovieImageEvent {
  const factory GetListMovieImage({required final String movieId}) =
      _$GetListMovieImage;

  @override
  String get movieId;
  @override
  @JsonKey(ignore: true)
  _$$GetListMovieImageCopyWith<_$GetListMovieImage> get copyWith =>
      throw _privateConstructorUsedError;
}
