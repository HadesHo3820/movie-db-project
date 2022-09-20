// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CastDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CastEntity castEntity) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CastDetailInitial value) initial,
    required TResult Function(_CastDetailLoading value) loading,
    required TResult Function(_CastDetailFailed value) failed,
    required TResult Function(_CastDetailSuccessful value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDetailStateCopyWith<$Res> {
  factory $CastDetailStateCopyWith(
          CastDetailState value, $Res Function(CastDetailState) then) =
      _$CastDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CastDetailStateCopyWithImpl<$Res>
    implements $CastDetailStateCopyWith<$Res> {
  _$CastDetailStateCopyWithImpl(this._value, this._then);

  final CastDetailState _value;
  // ignore: unused_field
  final $Res Function(CastDetailState) _then;
}

/// @nodoc
abstract class _$$_CastDetailInitialCopyWith<$Res> {
  factory _$$_CastDetailInitialCopyWith(_$_CastDetailInitial value,
          $Res Function(_$_CastDetailInitial) then) =
      __$$_CastDetailInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CastDetailInitialCopyWithImpl<$Res>
    extends _$CastDetailStateCopyWithImpl<$Res>
    implements _$$_CastDetailInitialCopyWith<$Res> {
  __$$_CastDetailInitialCopyWithImpl(
      _$_CastDetailInitial _value, $Res Function(_$_CastDetailInitial) _then)
      : super(_value, (v) => _then(v as _$_CastDetailInitial));

  @override
  _$_CastDetailInitial get _value => super._value as _$_CastDetailInitial;
}

/// @nodoc

class _$_CastDetailInitial implements _CastDetailInitial {
  const _$_CastDetailInitial();

  @override
  String toString() {
    return 'CastDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CastDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CastEntity castEntity) successful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
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
    required TResult Function(_CastDetailInitial value) initial,
    required TResult Function(_CastDetailLoading value) loading,
    required TResult Function(_CastDetailFailed value) failed,
    required TResult Function(_CastDetailSuccessful value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CastDetailInitial implements CastDetailState {
  const factory _CastDetailInitial() = _$_CastDetailInitial;
}

/// @nodoc
abstract class _$$_CastDetailLoadingCopyWith<$Res> {
  factory _$$_CastDetailLoadingCopyWith(_$_CastDetailLoading value,
          $Res Function(_$_CastDetailLoading) then) =
      __$$_CastDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CastDetailLoadingCopyWithImpl<$Res>
    extends _$CastDetailStateCopyWithImpl<$Res>
    implements _$$_CastDetailLoadingCopyWith<$Res> {
  __$$_CastDetailLoadingCopyWithImpl(
      _$_CastDetailLoading _value, $Res Function(_$_CastDetailLoading) _then)
      : super(_value, (v) => _then(v as _$_CastDetailLoading));

  @override
  _$_CastDetailLoading get _value => super._value as _$_CastDetailLoading;
}

/// @nodoc

class _$_CastDetailLoading implements _CastDetailLoading {
  const _$_CastDetailLoading();

  @override
  String toString() {
    return 'CastDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CastDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CastEntity castEntity) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
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
    required TResult Function(_CastDetailInitial value) initial,
    required TResult Function(_CastDetailLoading value) loading,
    required TResult Function(_CastDetailFailed value) failed,
    required TResult Function(_CastDetailSuccessful value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CastDetailLoading implements CastDetailState {
  const factory _CastDetailLoading() = _$_CastDetailLoading;
}

/// @nodoc
abstract class _$$_CastDetailFailedCopyWith<$Res> {
  factory _$$_CastDetailFailedCopyWith(
          _$_CastDetailFailed value, $Res Function(_$_CastDetailFailed) then) =
      __$$_CastDetailFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_CastDetailFailedCopyWithImpl<$Res>
    extends _$CastDetailStateCopyWithImpl<$Res>
    implements _$$_CastDetailFailedCopyWith<$Res> {
  __$$_CastDetailFailedCopyWithImpl(
      _$_CastDetailFailed _value, $Res Function(_$_CastDetailFailed) _then)
      : super(_value, (v) => _then(v as _$_CastDetailFailed));

  @override
  _$_CastDetailFailed get _value => super._value as _$_CastDetailFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_CastDetailFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CastDetailFailed implements _CastDetailFailed {
  const _$_CastDetailFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CastDetailState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastDetailFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_CastDetailFailedCopyWith<_$_CastDetailFailed> get copyWith =>
      __$$_CastDetailFailedCopyWithImpl<_$_CastDetailFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CastEntity castEntity) successful,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
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
    required TResult Function(_CastDetailInitial value) initial,
    required TResult Function(_CastDetailLoading value) loading,
    required TResult Function(_CastDetailFailed value) failed,
    required TResult Function(_CastDetailSuccessful value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CastDetailFailed implements CastDetailState {
  const factory _CastDetailFailed({required final String message}) =
      _$_CastDetailFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_CastDetailFailedCopyWith<_$_CastDetailFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CastDetailSuccessfulCopyWith<$Res> {
  factory _$$_CastDetailSuccessfulCopyWith(_$_CastDetailSuccessful value,
          $Res Function(_$_CastDetailSuccessful) then) =
      __$$_CastDetailSuccessfulCopyWithImpl<$Res>;
  $Res call({CastEntity castEntity});
}

/// @nodoc
class __$$_CastDetailSuccessfulCopyWithImpl<$Res>
    extends _$CastDetailStateCopyWithImpl<$Res>
    implements _$$_CastDetailSuccessfulCopyWith<$Res> {
  __$$_CastDetailSuccessfulCopyWithImpl(_$_CastDetailSuccessful _value,
      $Res Function(_$_CastDetailSuccessful) _then)
      : super(_value, (v) => _then(v as _$_CastDetailSuccessful));

  @override
  _$_CastDetailSuccessful get _value => super._value as _$_CastDetailSuccessful;

  @override
  $Res call({
    Object? castEntity = freezed,
  }) {
    return _then(_$_CastDetailSuccessful(
      castEntity: castEntity == freezed
          ? _value.castEntity
          : castEntity // ignore: cast_nullable_to_non_nullable
              as CastEntity,
    ));
  }
}

/// @nodoc

class _$_CastDetailSuccessful implements _CastDetailSuccessful {
  const _$_CastDetailSuccessful({required this.castEntity});

  @override
  final CastEntity castEntity;

  @override
  String toString() {
    return 'CastDetailState.successful(castEntity: $castEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastDetailSuccessful &&
            const DeepCollectionEquality()
                .equals(other.castEntity, castEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(castEntity));

  @JsonKey(ignore: true)
  @override
  _$$_CastDetailSuccessfulCopyWith<_$_CastDetailSuccessful> get copyWith =>
      __$$_CastDetailSuccessfulCopyWithImpl<_$_CastDetailSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(CastEntity castEntity) successful,
  }) {
    return successful(castEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
  }) {
    return successful?.call(castEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(CastEntity castEntity)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(castEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CastDetailInitial value) initial,
    required TResult Function(_CastDetailLoading value) loading,
    required TResult Function(_CastDetailFailed value) failed,
    required TResult Function(_CastDetailSuccessful value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CastDetailInitial value)? initial,
    TResult Function(_CastDetailLoading value)? loading,
    TResult Function(_CastDetailFailed value)? failed,
    TResult Function(_CastDetailSuccessful value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _CastDetailSuccessful implements CastDetailState {
  const factory _CastDetailSuccessful({required final CastEntity castEntity}) =
      _$_CastDetailSuccessful;

  CastEntity get castEntity;
  @JsonKey(ignore: true)
  _$$_CastDetailSuccessfulCopyWith<_$_CastDetailSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}
