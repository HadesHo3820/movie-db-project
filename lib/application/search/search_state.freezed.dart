// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)
        successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) initial,
    required TResult Function(_SearchLoading value) loading,
    required TResult Function(_SearchFailed value) failed,
    required TResult Function(_SearchSuccessful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_SearchInitialCopyWith<$Res> {
  factory _$$_SearchInitialCopyWith(
          _$_SearchInitial value, $Res Function(_$_SearchInitial) then) =
      __$$_SearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchInitialCopyWith<$Res> {
  __$$_SearchInitialCopyWithImpl(
      _$_SearchInitial _value, $Res Function(_$_SearchInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchInitial));

  @override
  _$_SearchInitial get _value => super._value as _$_SearchInitial;
}

/// @nodoc

class _$_SearchInitial implements _SearchInitial {
  const _$_SearchInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)
        successful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) initial,
    required TResult Function(_SearchLoading value) loading,
    required TResult Function(_SearchFailed value) failed,
    required TResult Function(_SearchSuccessful value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchInitial implements SearchState {
  const factory _SearchInitial() = _$_SearchInitial;
}

/// @nodoc
abstract class _$$_SearchLoadingCopyWith<$Res> {
  factory _$$_SearchLoadingCopyWith(
          _$_SearchLoading value, $Res Function(_$_SearchLoading) then) =
      __$$_SearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchLoadingCopyWith<$Res> {
  __$$_SearchLoadingCopyWithImpl(
      _$_SearchLoading _value, $Res Function(_$_SearchLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchLoading));

  @override
  _$_SearchLoading get _value => super._value as _$_SearchLoading;
}

/// @nodoc

class _$_SearchLoading implements _SearchLoading {
  const _$_SearchLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)
        successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) initial,
    required TResult Function(_SearchLoading value) loading,
    required TResult Function(_SearchFailed value) failed,
    required TResult Function(_SearchSuccessful value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoading implements SearchState {
  const factory _SearchLoading() = _$_SearchLoading;
}

/// @nodoc
abstract class _$$_SearchFailedCopyWith<$Res> {
  factory _$$_SearchFailedCopyWith(
          _$_SearchFailed value, $Res Function(_$_SearchFailed) then) =
      __$$_SearchFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_SearchFailedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchFailedCopyWith<$Res> {
  __$$_SearchFailedCopyWithImpl(
      _$_SearchFailed _value, $Res Function(_$_SearchFailed) _then)
      : super(_value, (v) => _then(v as _$_SearchFailed));

  @override
  _$_SearchFailed get _value => super._value as _$_SearchFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SearchFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchFailed implements _SearchFailed {
  const _$_SearchFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SearchFailedCopyWith<_$_SearchFailed> get copyWith =>
      __$$_SearchFailedCopyWithImpl<_$_SearchFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)
        successful,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) initial,
    required TResult Function(_SearchLoading value) loading,
    required TResult Function(_SearchFailed value) failed,
    required TResult Function(_SearchSuccessful value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _SearchFailed implements SearchState {
  const factory _SearchFailed({required final String message}) =
      _$_SearchFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_SearchFailedCopyWith<_$_SearchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchSuccessfulCopyWith<$Res> {
  factory _$$_SearchSuccessfulCopyWith(
          _$_SearchSuccessful value, $Res Function(_$_SearchSuccessful) then) =
      __$$_SearchSuccessfulCopyWithImpl<$Res>;
  $Res call(
      {List<MovieEntity> listMovieEntity,
      int totalResultMovie,
      List<MovieEntity> listTvShowsEntity,
      int totalResultTvShows,
      List<CastEntity> listCastEntity,
      int totalResultCasts});
}

/// @nodoc
class __$$_SearchSuccessfulCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchSuccessfulCopyWith<$Res> {
  __$$_SearchSuccessfulCopyWithImpl(
      _$_SearchSuccessful _value, $Res Function(_$_SearchSuccessful) _then)
      : super(_value, (v) => _then(v as _$_SearchSuccessful));

  @override
  _$_SearchSuccessful get _value => super._value as _$_SearchSuccessful;

  @override
  $Res call({
    Object? listMovieEntity = freezed,
    Object? totalResultMovie = freezed,
    Object? listTvShowsEntity = freezed,
    Object? totalResultTvShows = freezed,
    Object? listCastEntity = freezed,
    Object? totalResultCasts = freezed,
  }) {
    return _then(_$_SearchSuccessful(
      listMovieEntity: listMovieEntity == freezed
          ? _value._listMovieEntity
          : listMovieEntity // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      totalResultMovie: totalResultMovie == freezed
          ? _value.totalResultMovie
          : totalResultMovie // ignore: cast_nullable_to_non_nullable
              as int,
      listTvShowsEntity: listTvShowsEntity == freezed
          ? _value._listTvShowsEntity
          : listTvShowsEntity // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      totalResultTvShows: totalResultTvShows == freezed
          ? _value.totalResultTvShows
          : totalResultTvShows // ignore: cast_nullable_to_non_nullable
              as int,
      listCastEntity: listCastEntity == freezed
          ? _value._listCastEntity
          : listCastEntity // ignore: cast_nullable_to_non_nullable
              as List<CastEntity>,
      totalResultCasts: totalResultCasts == freezed
          ? _value.totalResultCasts
          : totalResultCasts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchSuccessful implements _SearchSuccessful {
  const _$_SearchSuccessful(
      {required final List<MovieEntity> listMovieEntity,
      required this.totalResultMovie,
      required final List<MovieEntity> listTvShowsEntity,
      required this.totalResultTvShows,
      required final List<CastEntity> listCastEntity,
      required this.totalResultCasts})
      : _listMovieEntity = listMovieEntity,
        _listTvShowsEntity = listTvShowsEntity,
        _listCastEntity = listCastEntity;

  final List<MovieEntity> _listMovieEntity;
  @override
  List<MovieEntity> get listMovieEntity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMovieEntity);
  }

  @override
  final int totalResultMovie;
  final List<MovieEntity> _listTvShowsEntity;
  @override
  List<MovieEntity> get listTvShowsEntity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTvShowsEntity);
  }

  @override
  final int totalResultTvShows;
  final List<CastEntity> _listCastEntity;
  @override
  List<CastEntity> get listCastEntity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCastEntity);
  }

  @override
  final int totalResultCasts;

  @override
  String toString() {
    return 'SearchState.successful(listMovieEntity: $listMovieEntity, totalResultMovie: $totalResultMovie, listTvShowsEntity: $listTvShowsEntity, totalResultTvShows: $totalResultTvShows, listCastEntity: $listCastEntity, totalResultCasts: $totalResultCasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSuccessful &&
            const DeepCollectionEquality()
                .equals(other._listMovieEntity, _listMovieEntity) &&
            const DeepCollectionEquality()
                .equals(other.totalResultMovie, totalResultMovie) &&
            const DeepCollectionEquality()
                .equals(other._listTvShowsEntity, _listTvShowsEntity) &&
            const DeepCollectionEquality()
                .equals(other.totalResultTvShows, totalResultTvShows) &&
            const DeepCollectionEquality()
                .equals(other._listCastEntity, _listCastEntity) &&
            const DeepCollectionEquality()
                .equals(other.totalResultCasts, totalResultCasts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listMovieEntity),
      const DeepCollectionEquality().hash(totalResultMovie),
      const DeepCollectionEquality().hash(_listTvShowsEntity),
      const DeepCollectionEquality().hash(totalResultTvShows),
      const DeepCollectionEquality().hash(_listCastEntity),
      const DeepCollectionEquality().hash(totalResultCasts));

  @JsonKey(ignore: true)
  @override
  _$$_SearchSuccessfulCopyWith<_$_SearchSuccessful> get copyWith =>
      __$$_SearchSuccessfulCopyWithImpl<_$_SearchSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)
        successful,
  }) {
    return successful(listMovieEntity, totalResultMovie, listTvShowsEntity,
        totalResultTvShows, listCastEntity, totalResultCasts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
  }) {
    return successful?.call(
        listMovieEntity,
        totalResultMovie,
        listTvShowsEntity,
        totalResultTvShows,
        listCastEntity,
        totalResultCasts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(
            List<MovieEntity> listMovieEntity,
            int totalResultMovie,
            List<MovieEntity> listTvShowsEntity,
            int totalResultTvShows,
            List<CastEntity> listCastEntity,
            int totalResultCasts)?
        successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(listMovieEntity, totalResultMovie, listTvShowsEntity,
          totalResultTvShows, listCastEntity, totalResultCasts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) initial,
    required TResult Function(_SearchLoading value) loading,
    required TResult Function(_SearchFailed value) failed,
    required TResult Function(_SearchSuccessful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? initial,
    TResult Function(_SearchLoading value)? loading,
    TResult Function(_SearchFailed value)? failed,
    TResult Function(_SearchSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccessful implements SearchState {
  const factory _SearchSuccessful(
      {required final List<MovieEntity> listMovieEntity,
      required final int totalResultMovie,
      required final List<MovieEntity> listTvShowsEntity,
      required final int totalResultTvShows,
      required final List<CastEntity> listCastEntity,
      required final int totalResultCasts}) = _$_SearchSuccessful;

  List<MovieEntity> get listMovieEntity;
  int get totalResultMovie;
  List<MovieEntity> get listTvShowsEntity;
  int get totalResultTvShows;
  List<CastEntity> get listCastEntity;
  int get totalResultCasts;
  @JsonKey(ignore: true)
  _$$_SearchSuccessfulCopyWith<_$_SearchSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
