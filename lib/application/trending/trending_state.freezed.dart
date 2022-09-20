// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trending_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrendingState {
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
    required TResult Function(_TrendingInitial value) initial,
    required TResult Function(_TrendingLoading value) loading,
    required TResult Function(_TrendingFailed value) failed,
    required TResult Function(_TrendingSuccessful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingStateCopyWith<$Res> {
  factory $TrendingStateCopyWith(
          TrendingState value, $Res Function(TrendingState) then) =
      _$TrendingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrendingStateCopyWithImpl<$Res>
    implements $TrendingStateCopyWith<$Res> {
  _$TrendingStateCopyWithImpl(this._value, this._then);

  final TrendingState _value;
  // ignore: unused_field
  final $Res Function(TrendingState) _then;
}

/// @nodoc
abstract class _$$_TrendingInitialCopyWith<$Res> {
  factory _$$_TrendingInitialCopyWith(
          _$_TrendingInitial value, $Res Function(_$_TrendingInitial) then) =
      __$$_TrendingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TrendingInitialCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_TrendingInitialCopyWith<$Res> {
  __$$_TrendingInitialCopyWithImpl(
      _$_TrendingInitial _value, $Res Function(_$_TrendingInitial) _then)
      : super(_value, (v) => _then(v as _$_TrendingInitial));

  @override
  _$_TrendingInitial get _value => super._value as _$_TrendingInitial;
}

/// @nodoc

class _$_TrendingInitial implements _TrendingInitial {
  const _$_TrendingInitial();

  @override
  String toString() {
    return 'TrendingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TrendingInitial);
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
    required TResult Function(_TrendingInitial value) initial,
    required TResult Function(_TrendingLoading value) loading,
    required TResult Function(_TrendingFailed value) failed,
    required TResult Function(_TrendingSuccessful value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TrendingInitial implements TrendingState {
  const factory _TrendingInitial() = _$_TrendingInitial;
}

/// @nodoc
abstract class _$$_TrendingLoadingCopyWith<$Res> {
  factory _$$_TrendingLoadingCopyWith(
          _$_TrendingLoading value, $Res Function(_$_TrendingLoading) then) =
      __$$_TrendingLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TrendingLoadingCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_TrendingLoadingCopyWith<$Res> {
  __$$_TrendingLoadingCopyWithImpl(
      _$_TrendingLoading _value, $Res Function(_$_TrendingLoading) _then)
      : super(_value, (v) => _then(v as _$_TrendingLoading));

  @override
  _$_TrendingLoading get _value => super._value as _$_TrendingLoading;
}

/// @nodoc

class _$_TrendingLoading implements _TrendingLoading {
  const _$_TrendingLoading();

  @override
  String toString() {
    return 'TrendingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TrendingLoading);
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
    required TResult Function(_TrendingInitial value) initial,
    required TResult Function(_TrendingLoading value) loading,
    required TResult Function(_TrendingFailed value) failed,
    required TResult Function(_TrendingSuccessful value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TrendingLoading implements TrendingState {
  const factory _TrendingLoading() = _$_TrendingLoading;
}

/// @nodoc
abstract class _$$_TrendingFailedCopyWith<$Res> {
  factory _$$_TrendingFailedCopyWith(
          _$_TrendingFailed value, $Res Function(_$_TrendingFailed) then) =
      __$$_TrendingFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_TrendingFailedCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_TrendingFailedCopyWith<$Res> {
  __$$_TrendingFailedCopyWithImpl(
      _$_TrendingFailed _value, $Res Function(_$_TrendingFailed) _then)
      : super(_value, (v) => _then(v as _$_TrendingFailed));

  @override
  _$_TrendingFailed get _value => super._value as _$_TrendingFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_TrendingFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrendingFailed implements _TrendingFailed {
  const _$_TrendingFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TrendingState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_TrendingFailedCopyWith<_$_TrendingFailed> get copyWith =>
      __$$_TrendingFailedCopyWithImpl<_$_TrendingFailed>(this, _$identity);

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
    required TResult Function(_TrendingInitial value) initial,
    required TResult Function(_TrendingLoading value) loading,
    required TResult Function(_TrendingFailed value) failed,
    required TResult Function(_TrendingSuccessful value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _TrendingFailed implements TrendingState {
  const factory _TrendingFailed({required final String message}) =
      _$_TrendingFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_TrendingFailedCopyWith<_$_TrendingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TrendingSuccessfulCopyWith<$Res> {
  factory _$$_TrendingSuccessfulCopyWith(_$_TrendingSuccessful value,
          $Res Function(_$_TrendingSuccessful) then) =
      __$$_TrendingSuccessfulCopyWithImpl<$Res>;
  $Res call({ListMovieModel listMovieModel});
}

/// @nodoc
class __$$_TrendingSuccessfulCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_TrendingSuccessfulCopyWith<$Res> {
  __$$_TrendingSuccessfulCopyWithImpl(
      _$_TrendingSuccessful _value, $Res Function(_$_TrendingSuccessful) _then)
      : super(_value, (v) => _then(v as _$_TrendingSuccessful));

  @override
  _$_TrendingSuccessful get _value => super._value as _$_TrendingSuccessful;

  @override
  $Res call({
    Object? listMovieModel = freezed,
  }) {
    return _then(_$_TrendingSuccessful(
      listMovieModel: listMovieModel == freezed
          ? _value.listMovieModel
          : listMovieModel // ignore: cast_nullable_to_non_nullable
              as ListMovieModel,
    ));
  }
}

/// @nodoc

class _$_TrendingSuccessful implements _TrendingSuccessful {
  const _$_TrendingSuccessful({required this.listMovieModel});

  @override
  final ListMovieModel listMovieModel;

  @override
  String toString() {
    return 'TrendingState.successful(listMovieModel: $listMovieModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingSuccessful &&
            const DeepCollectionEquality()
                .equals(other.listMovieModel, listMovieModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listMovieModel));

  @JsonKey(ignore: true)
  @override
  _$$_TrendingSuccessfulCopyWith<_$_TrendingSuccessful> get copyWith =>
      __$$_TrendingSuccessfulCopyWithImpl<_$_TrendingSuccessful>(
          this, _$identity);

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
    required TResult Function(_TrendingInitial value) initial,
    required TResult Function(_TrendingLoading value) loading,
    required TResult Function(_TrendingFailed value) failed,
    required TResult Function(_TrendingSuccessful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrendingInitial value)? initial,
    TResult Function(_TrendingLoading value)? loading,
    TResult Function(_TrendingFailed value)? failed,
    TResult Function(_TrendingSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _TrendingSuccessful implements TrendingState {
  const factory _TrendingSuccessful(
      {required final ListMovieModel listMovieModel}) = _$_TrendingSuccessful;

  ListMovieModel get listMovieModel;
  @JsonKey(ignore: true)
  _$$_TrendingSuccessfulCopyWith<_$_TrendingSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
