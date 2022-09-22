// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_cast_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieCastState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CreditEntity creditEntity) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieCastInitial value) initial,
    required TResult Function(_MovieCastLoading value) loading,
    required TResult Function(_MovieCastFailed value) failed,
    required TResult Function(_MovieCastSuccessful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastStateCopyWith<$Res> {
  factory $MovieCastStateCopyWith(
          MovieCastState value, $Res Function(MovieCastState) then) =
      _$MovieCastStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieCastStateCopyWithImpl<$Res>
    implements $MovieCastStateCopyWith<$Res> {
  _$MovieCastStateCopyWithImpl(this._value, this._then);

  final MovieCastState _value;
  // ignore: unused_field
  final $Res Function(MovieCastState) _then;
}

/// @nodoc
abstract class _$$_MovieCastInitialCopyWith<$Res> {
  factory _$$_MovieCastInitialCopyWith(
          _$_MovieCastInitial value, $Res Function(_$_MovieCastInitial) then) =
      __$$_MovieCastInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieCastInitialCopyWithImpl<$Res>
    extends _$MovieCastStateCopyWithImpl<$Res>
    implements _$$_MovieCastInitialCopyWith<$Res> {
  __$$_MovieCastInitialCopyWithImpl(
      _$_MovieCastInitial _value, $Res Function(_$_MovieCastInitial) _then)
      : super(_value, (v) => _then(v as _$_MovieCastInitial));

  @override
  _$_MovieCastInitial get _value => super._value as _$_MovieCastInitial;
}

/// @nodoc

class _$_MovieCastInitial implements _MovieCastInitial {
  const _$_MovieCastInitial();

  @override
  String toString() {
    return 'MovieCastState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieCastInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CreditEntity creditEntity) successful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
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
    required TResult Function(_MovieCastInitial value) initial,
    required TResult Function(_MovieCastLoading value) loading,
    required TResult Function(_MovieCastFailed value) failed,
    required TResult Function(_MovieCastSuccessful value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MovieCastInitial implements MovieCastState {
  const factory _MovieCastInitial() = _$_MovieCastInitial;
}

/// @nodoc
abstract class _$$_MovieCastLoadingCopyWith<$Res> {
  factory _$$_MovieCastLoadingCopyWith(
          _$_MovieCastLoading value, $Res Function(_$_MovieCastLoading) then) =
      __$$_MovieCastLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieCastLoadingCopyWithImpl<$Res>
    extends _$MovieCastStateCopyWithImpl<$Res>
    implements _$$_MovieCastLoadingCopyWith<$Res> {
  __$$_MovieCastLoadingCopyWithImpl(
      _$_MovieCastLoading _value, $Res Function(_$_MovieCastLoading) _then)
      : super(_value, (v) => _then(v as _$_MovieCastLoading));

  @override
  _$_MovieCastLoading get _value => super._value as _$_MovieCastLoading;
}

/// @nodoc

class _$_MovieCastLoading implements _MovieCastLoading {
  const _$_MovieCastLoading();

  @override
  String toString() {
    return 'MovieCastState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieCastLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CreditEntity creditEntity) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
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
    required TResult Function(_MovieCastInitial value) initial,
    required TResult Function(_MovieCastLoading value) loading,
    required TResult Function(_MovieCastFailed value) failed,
    required TResult Function(_MovieCastSuccessful value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MovieCastLoading implements MovieCastState {
  const factory _MovieCastLoading() = _$_MovieCastLoading;
}

/// @nodoc
abstract class _$$_MovieCastFailedCopyWith<$Res> {
  factory _$$_MovieCastFailedCopyWith(
          _$_MovieCastFailed value, $Res Function(_$_MovieCastFailed) then) =
      __$$_MovieCastFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_MovieCastFailedCopyWithImpl<$Res>
    extends _$MovieCastStateCopyWithImpl<$Res>
    implements _$$_MovieCastFailedCopyWith<$Res> {
  __$$_MovieCastFailedCopyWithImpl(
      _$_MovieCastFailed _value, $Res Function(_$_MovieCastFailed) _then)
      : super(_value, (v) => _then(v as _$_MovieCastFailed));

  @override
  _$_MovieCastFailed get _value => super._value as _$_MovieCastFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_MovieCastFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MovieCastFailed implements _MovieCastFailed {
  const _$_MovieCastFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MovieCastState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieCastFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_MovieCastFailedCopyWith<_$_MovieCastFailed> get copyWith =>
      __$$_MovieCastFailedCopyWithImpl<_$_MovieCastFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CreditEntity creditEntity) successful,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
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
    required TResult Function(_MovieCastInitial value) initial,
    required TResult Function(_MovieCastLoading value) loading,
    required TResult Function(_MovieCastFailed value) failed,
    required TResult Function(_MovieCastSuccessful value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _MovieCastFailed implements MovieCastState {
  const factory _MovieCastFailed({required final String message}) =
      _$_MovieCastFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_MovieCastFailedCopyWith<_$_MovieCastFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MovieCastSuccessfulCopyWith<$Res> {
  factory _$$_MovieCastSuccessfulCopyWith(_$_MovieCastSuccessful value,
          $Res Function(_$_MovieCastSuccessful) then) =
      __$$_MovieCastSuccessfulCopyWithImpl<$Res>;
  $Res call({CreditEntity creditEntity});
}

/// @nodoc
class __$$_MovieCastSuccessfulCopyWithImpl<$Res>
    extends _$MovieCastStateCopyWithImpl<$Res>
    implements _$$_MovieCastSuccessfulCopyWith<$Res> {
  __$$_MovieCastSuccessfulCopyWithImpl(_$_MovieCastSuccessful _value,
      $Res Function(_$_MovieCastSuccessful) _then)
      : super(_value, (v) => _then(v as _$_MovieCastSuccessful));

  @override
  _$_MovieCastSuccessful get _value => super._value as _$_MovieCastSuccessful;

  @override
  $Res call({
    Object? creditEntity = freezed,
  }) {
    return _then(_$_MovieCastSuccessful(
      creditEntity: creditEntity == freezed
          ? _value.creditEntity
          : creditEntity // ignore: cast_nullable_to_non_nullable
              as CreditEntity,
    ));
  }
}

/// @nodoc

class _$_MovieCastSuccessful implements _MovieCastSuccessful {
  const _$_MovieCastSuccessful({required this.creditEntity});

  @override
  final CreditEntity creditEntity;

  @override
  String toString() {
    return 'MovieCastState.successful(creditEntity: $creditEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieCastSuccessful &&
            const DeepCollectionEquality()
                .equals(other.creditEntity, creditEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(creditEntity));

  @JsonKey(ignore: true)
  @override
  _$$_MovieCastSuccessfulCopyWith<_$_MovieCastSuccessful> get copyWith =>
      __$$_MovieCastSuccessfulCopyWithImpl<_$_MovieCastSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CreditEntity creditEntity) successful,
  }) {
    return successful(creditEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
  }) {
    return successful?.call(creditEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CreditEntity creditEntity)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(creditEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieCastInitial value) initial,
    required TResult Function(_MovieCastLoading value) loading,
    required TResult Function(_MovieCastFailed value) failed,
    required TResult Function(_MovieCastSuccessful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieCastInitial value)? initial,
    TResult Function(_MovieCastLoading value)? loading,
    TResult Function(_MovieCastFailed value)? failed,
    TResult Function(_MovieCastSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _MovieCastSuccessful implements MovieCastState {
  const factory _MovieCastSuccessful(
      {required final CreditEntity creditEntity}) = _$_MovieCastSuccessful;

  CreditEntity get creditEntity;
  @JsonKey(ignore: true)
  _$$_MovieCastSuccessfulCopyWith<_$_MovieCastSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
