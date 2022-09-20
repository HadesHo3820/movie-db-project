// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(ListMovieModel listMovieModel) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayingInitial value) initial,
    required TResult Function(_PlayingLoading value) loading,
    required TResult Function(_PlayingFailed value) failed,
    required TResult Function(_PlayingSuccesful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayingStateCopyWith<$Res> {
  factory $PlayingStateCopyWith(
          PlayingState value, $Res Function(PlayingState) then) =
      _$PlayingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayingStateCopyWithImpl<$Res> implements $PlayingStateCopyWith<$Res> {
  _$PlayingStateCopyWithImpl(this._value, this._then);

  final PlayingState _value;
  // ignore: unused_field
  final $Res Function(PlayingState) _then;
}

/// @nodoc
abstract class _$$_PlayingInitialCopyWith<$Res> {
  factory _$$_PlayingInitialCopyWith(
          _$_PlayingInitial value, $Res Function(_$_PlayingInitial) then) =
      __$$_PlayingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayingInitialCopyWithImpl<$Res>
    extends _$PlayingStateCopyWithImpl<$Res>
    implements _$$_PlayingInitialCopyWith<$Res> {
  __$$_PlayingInitialCopyWithImpl(
      _$_PlayingInitial _value, $Res Function(_$_PlayingInitial) _then)
      : super(_value, (v) => _then(v as _$_PlayingInitial));

  @override
  _$_PlayingInitial get _value => super._value as _$_PlayingInitial;
}

/// @nodoc

class _$_PlayingInitial implements _PlayingInitial {
  const _$_PlayingInitial();

  @override
  String toString() {
    return 'PlayingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(ListMovieModel listMovieModel) successful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
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
    required TResult Function(_PlayingInitial value) initial,
    required TResult Function(_PlayingLoading value) loading,
    required TResult Function(_PlayingFailed value) failed,
    required TResult Function(_PlayingSuccesful value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PlayingInitial implements PlayingState {
  const factory _PlayingInitial() = _$_PlayingInitial;
}

/// @nodoc
abstract class _$$_PlayingLoadingCopyWith<$Res> {
  factory _$$_PlayingLoadingCopyWith(
          _$_PlayingLoading value, $Res Function(_$_PlayingLoading) then) =
      __$$_PlayingLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayingLoadingCopyWithImpl<$Res>
    extends _$PlayingStateCopyWithImpl<$Res>
    implements _$$_PlayingLoadingCopyWith<$Res> {
  __$$_PlayingLoadingCopyWithImpl(
      _$_PlayingLoading _value, $Res Function(_$_PlayingLoading) _then)
      : super(_value, (v) => _then(v as _$_PlayingLoading));

  @override
  _$_PlayingLoading get _value => super._value as _$_PlayingLoading;
}

/// @nodoc

class _$_PlayingLoading implements _PlayingLoading {
  const _$_PlayingLoading();

  @override
  String toString() {
    return 'PlayingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayingLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(ListMovieModel listMovieModel) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
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
    required TResult Function(_PlayingInitial value) initial,
    required TResult Function(_PlayingLoading value) loading,
    required TResult Function(_PlayingFailed value) failed,
    required TResult Function(_PlayingSuccesful value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlayingLoading implements PlayingState {
  const factory _PlayingLoading() = _$_PlayingLoading;
}

/// @nodoc
abstract class _$$_PlayingFailedCopyWith<$Res> {
  factory _$$_PlayingFailedCopyWith(
          _$_PlayingFailed value, $Res Function(_$_PlayingFailed) then) =
      __$$_PlayingFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_PlayingFailedCopyWithImpl<$Res>
    extends _$PlayingStateCopyWithImpl<$Res>
    implements _$$_PlayingFailedCopyWith<$Res> {
  __$$_PlayingFailedCopyWithImpl(
      _$_PlayingFailed _value, $Res Function(_$_PlayingFailed) _then)
      : super(_value, (v) => _then(v as _$_PlayingFailed));

  @override
  _$_PlayingFailed get _value => super._value as _$_PlayingFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_PlayingFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayingFailed implements _PlayingFailed {
  const _$_PlayingFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PlayingState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayingFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_PlayingFailedCopyWith<_$_PlayingFailed> get copyWith =>
      __$$_PlayingFailedCopyWithImpl<_$_PlayingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(ListMovieModel listMovieModel) successful,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
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
    required TResult Function(_PlayingInitial value) initial,
    required TResult Function(_PlayingLoading value) loading,
    required TResult Function(_PlayingFailed value) failed,
    required TResult Function(_PlayingSuccesful value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PlayingFailed implements PlayingState {
  const factory _PlayingFailed({required final String message}) =
      _$_PlayingFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_PlayingFailedCopyWith<_$_PlayingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayingSuccesfulCopyWith<$Res> {
  factory _$$_PlayingSuccesfulCopyWith(
          _$_PlayingSuccesful value, $Res Function(_$_PlayingSuccesful) then) =
      __$$_PlayingSuccesfulCopyWithImpl<$Res>;
  $Res call({ListMovieModel listMovieModel});
}

/// @nodoc
class __$$_PlayingSuccesfulCopyWithImpl<$Res>
    extends _$PlayingStateCopyWithImpl<$Res>
    implements _$$_PlayingSuccesfulCopyWith<$Res> {
  __$$_PlayingSuccesfulCopyWithImpl(
      _$_PlayingSuccesful _value, $Res Function(_$_PlayingSuccesful) _then)
      : super(_value, (v) => _then(v as _$_PlayingSuccesful));

  @override
  _$_PlayingSuccesful get _value => super._value as _$_PlayingSuccesful;

  @override
  $Res call({
    Object? listMovieModel = freezed,
  }) {
    return _then(_$_PlayingSuccesful(
      listMovieModel: listMovieModel == freezed
          ? _value.listMovieModel
          : listMovieModel // ignore: cast_nullable_to_non_nullable
              as ListMovieModel,
    ));
  }
}

/// @nodoc

class _$_PlayingSuccesful implements _PlayingSuccesful {
  const _$_PlayingSuccesful({required this.listMovieModel});

  @override
  final ListMovieModel listMovieModel;

  @override
  String toString() {
    return 'PlayingState.successful(listMovieModel: $listMovieModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayingSuccesful &&
            const DeepCollectionEquality()
                .equals(other.listMovieModel, listMovieModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listMovieModel));

  @JsonKey(ignore: true)
  @override
  _$$_PlayingSuccesfulCopyWith<_$_PlayingSuccesful> get copyWith =>
      __$$_PlayingSuccesfulCopyWithImpl<_$_PlayingSuccesful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(ListMovieModel listMovieModel) successful,
  }) {
    return successful(listMovieModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
  }) {
    return successful?.call(listMovieModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(ListMovieModel listMovieModel)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(listMovieModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayingInitial value) initial,
    required TResult Function(_PlayingLoading value) loading,
    required TResult Function(_PlayingFailed value) failed,
    required TResult Function(_PlayingSuccesful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayingInitial value)? initial,
    TResult Function(_PlayingLoading value)? loading,
    TResult Function(_PlayingFailed value)? failed,
    TResult Function(_PlayingSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _PlayingSuccesful implements PlayingState {
  const factory _PlayingSuccesful(
      {required final ListMovieModel listMovieModel}) = _$_PlayingSuccesful;

  ListMovieModel get listMovieModel;
  @JsonKey(ignore: true)
  _$$_PlayingSuccesfulCopyWith<_$_PlayingSuccesful> get copyWith =>
      throw _privateConstructorUsedError;
}
