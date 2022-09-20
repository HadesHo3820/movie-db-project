// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_rated_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopRatedState {
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
    required TResult Function(_TopRatedInitial value) initial,
    required TResult Function(_TopRatedLoading value) loading,
    required TResult Function(_TopRatedFailed value) failed,
    required TResult Function(_TopRatedSuccesful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedStateCopyWith<$Res> {
  factory $TopRatedStateCopyWith(
          TopRatedState value, $Res Function(TopRatedState) then) =
      _$TopRatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopRatedStateCopyWithImpl<$Res>
    implements $TopRatedStateCopyWith<$Res> {
  _$TopRatedStateCopyWithImpl(this._value, this._then);

  final TopRatedState _value;
  // ignore: unused_field
  final $Res Function(TopRatedState) _then;
}

/// @nodoc
abstract class _$$_TopRatedInitialCopyWith<$Res> {
  factory _$$_TopRatedInitialCopyWith(
          _$_TopRatedInitial value, $Res Function(_$_TopRatedInitial) then) =
      __$$_TopRatedInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TopRatedInitialCopyWithImpl<$Res>
    extends _$TopRatedStateCopyWithImpl<$Res>
    implements _$$_TopRatedInitialCopyWith<$Res> {
  __$$_TopRatedInitialCopyWithImpl(
      _$_TopRatedInitial _value, $Res Function(_$_TopRatedInitial) _then)
      : super(_value, (v) => _then(v as _$_TopRatedInitial));

  @override
  _$_TopRatedInitial get _value => super._value as _$_TopRatedInitial;
}

/// @nodoc

class _$_TopRatedInitial implements _TopRatedInitial {
  const _$_TopRatedInitial();

  @override
  String toString() {
    return 'TopRatedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TopRatedInitial);
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
    required TResult Function(_TopRatedInitial value) initial,
    required TResult Function(_TopRatedLoading value) loading,
    required TResult Function(_TopRatedFailed value) failed,
    required TResult Function(_TopRatedSuccesful value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TopRatedInitial implements TopRatedState {
  const factory _TopRatedInitial() = _$_TopRatedInitial;
}

/// @nodoc
abstract class _$$_TopRatedLoadingCopyWith<$Res> {
  factory _$$_TopRatedLoadingCopyWith(
          _$_TopRatedLoading value, $Res Function(_$_TopRatedLoading) then) =
      __$$_TopRatedLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TopRatedLoadingCopyWithImpl<$Res>
    extends _$TopRatedStateCopyWithImpl<$Res>
    implements _$$_TopRatedLoadingCopyWith<$Res> {
  __$$_TopRatedLoadingCopyWithImpl(
      _$_TopRatedLoading _value, $Res Function(_$_TopRatedLoading) _then)
      : super(_value, (v) => _then(v as _$_TopRatedLoading));

  @override
  _$_TopRatedLoading get _value => super._value as _$_TopRatedLoading;
}

/// @nodoc

class _$_TopRatedLoading implements _TopRatedLoading {
  const _$_TopRatedLoading();

  @override
  String toString() {
    return 'TopRatedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TopRatedLoading);
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
    required TResult Function(_TopRatedInitial value) initial,
    required TResult Function(_TopRatedLoading value) loading,
    required TResult Function(_TopRatedFailed value) failed,
    required TResult Function(_TopRatedSuccesful value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TopRatedLoading implements TopRatedState {
  const factory _TopRatedLoading() = _$_TopRatedLoading;
}

/// @nodoc
abstract class _$$_TopRatedFailedCopyWith<$Res> {
  factory _$$_TopRatedFailedCopyWith(
          _$_TopRatedFailed value, $Res Function(_$_TopRatedFailed) then) =
      __$$_TopRatedFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_TopRatedFailedCopyWithImpl<$Res>
    extends _$TopRatedStateCopyWithImpl<$Res>
    implements _$$_TopRatedFailedCopyWith<$Res> {
  __$$_TopRatedFailedCopyWithImpl(
      _$_TopRatedFailed _value, $Res Function(_$_TopRatedFailed) _then)
      : super(_value, (v) => _then(v as _$_TopRatedFailed));

  @override
  _$_TopRatedFailed get _value => super._value as _$_TopRatedFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_TopRatedFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopRatedFailed implements _TopRatedFailed {
  const _$_TopRatedFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TopRatedState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopRatedFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_TopRatedFailedCopyWith<_$_TopRatedFailed> get copyWith =>
      __$$_TopRatedFailedCopyWithImpl<_$_TopRatedFailed>(this, _$identity);

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
    required TResult Function(_TopRatedInitial value) initial,
    required TResult Function(_TopRatedLoading value) loading,
    required TResult Function(_TopRatedFailed value) failed,
    required TResult Function(_TopRatedSuccesful value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _TopRatedFailed implements TopRatedState {
  const factory _TopRatedFailed({required final String message}) =
      _$_TopRatedFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_TopRatedFailedCopyWith<_$_TopRatedFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TopRatedSuccesfulCopyWith<$Res> {
  factory _$$_TopRatedSuccesfulCopyWith(_$_TopRatedSuccesful value,
          $Res Function(_$_TopRatedSuccesful) then) =
      __$$_TopRatedSuccesfulCopyWithImpl<$Res>;
  $Res call({ListMovieModel listMovieModel});
}

/// @nodoc
class __$$_TopRatedSuccesfulCopyWithImpl<$Res>
    extends _$TopRatedStateCopyWithImpl<$Res>
    implements _$$_TopRatedSuccesfulCopyWith<$Res> {
  __$$_TopRatedSuccesfulCopyWithImpl(
      _$_TopRatedSuccesful _value, $Res Function(_$_TopRatedSuccesful) _then)
      : super(_value, (v) => _then(v as _$_TopRatedSuccesful));

  @override
  _$_TopRatedSuccesful get _value => super._value as _$_TopRatedSuccesful;

  @override
  $Res call({
    Object? listMovieModel = freezed,
  }) {
    return _then(_$_TopRatedSuccesful(
      listMovieModel: listMovieModel == freezed
          ? _value.listMovieModel
          : listMovieModel // ignore: cast_nullable_to_non_nullable
              as ListMovieModel,
    ));
  }
}

/// @nodoc

class _$_TopRatedSuccesful implements _TopRatedSuccesful {
  const _$_TopRatedSuccesful({required this.listMovieModel});

  @override
  final ListMovieModel listMovieModel;

  @override
  String toString() {
    return 'TopRatedState.successful(listMovieModel: $listMovieModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopRatedSuccesful &&
            const DeepCollectionEquality()
                .equals(other.listMovieModel, listMovieModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listMovieModel));

  @JsonKey(ignore: true)
  @override
  _$$_TopRatedSuccesfulCopyWith<_$_TopRatedSuccesful> get copyWith =>
      __$$_TopRatedSuccesfulCopyWithImpl<_$_TopRatedSuccesful>(
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
    required TResult Function(_TopRatedInitial value) initial,
    required TResult Function(_TopRatedLoading value) loading,
    required TResult Function(_TopRatedFailed value) failed,
    required TResult Function(_TopRatedSuccesful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopRatedInitial value)? initial,
    TResult Function(_TopRatedLoading value)? loading,
    TResult Function(_TopRatedFailed value)? failed,
    TResult Function(_TopRatedSuccesful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _TopRatedSuccesful implements TopRatedState {
  const factory _TopRatedSuccesful(
      {required final ListMovieModel listMovieModel}) = _$_TopRatedSuccesful;

  ListMovieModel get listMovieModel;
  @JsonKey(ignore: true)
  _$$_TopRatedSuccesfulCopyWith<_$_TopRatedSuccesful> get copyWith =>
      throw _privateConstructorUsedError;
}
