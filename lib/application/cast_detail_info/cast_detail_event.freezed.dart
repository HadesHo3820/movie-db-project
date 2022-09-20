// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CastDetailEvent {
  CastEntity get castEntity => throw _privateConstructorUsedError;
  bool get isCast => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CastEntity castEntity, bool isCast) getCastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CastEntity castEntity, bool isCast)? getCastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CastEntity castEntity, bool isCast)? getCastInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastInfo value) getCastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCastInfo value)? getCastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastInfo value)? getCastInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastDetailEventCopyWith<CastDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDetailEventCopyWith<$Res> {
  factory $CastDetailEventCopyWith(
          CastDetailEvent value, $Res Function(CastDetailEvent) then) =
      _$CastDetailEventCopyWithImpl<$Res>;
  $Res call({CastEntity castEntity, bool isCast});
}

/// @nodoc
class _$CastDetailEventCopyWithImpl<$Res>
    implements $CastDetailEventCopyWith<$Res> {
  _$CastDetailEventCopyWithImpl(this._value, this._then);

  final CastDetailEvent _value;
  // ignore: unused_field
  final $Res Function(CastDetailEvent) _then;

  @override
  $Res call({
    Object? castEntity = freezed,
    Object? isCast = freezed,
  }) {
    return _then(_value.copyWith(
      castEntity: castEntity == freezed
          ? _value.castEntity
          : castEntity // ignore: cast_nullable_to_non_nullable
              as CastEntity,
      isCast: isCast == freezed
          ? _value.isCast
          : isCast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$GetCastInfoCopyWith<$Res>
    implements $CastDetailEventCopyWith<$Res> {
  factory _$$GetCastInfoCopyWith(
          _$GetCastInfo value, $Res Function(_$GetCastInfo) then) =
      __$$GetCastInfoCopyWithImpl<$Res>;
  @override
  $Res call({CastEntity castEntity, bool isCast});
}

/// @nodoc
class __$$GetCastInfoCopyWithImpl<$Res>
    extends _$CastDetailEventCopyWithImpl<$Res>
    implements _$$GetCastInfoCopyWith<$Res> {
  __$$GetCastInfoCopyWithImpl(
      _$GetCastInfo _value, $Res Function(_$GetCastInfo) _then)
      : super(_value, (v) => _then(v as _$GetCastInfo));

  @override
  _$GetCastInfo get _value => super._value as _$GetCastInfo;

  @override
  $Res call({
    Object? castEntity = freezed,
    Object? isCast = freezed,
  }) {
    return _then(_$GetCastInfo(
      castEntity: castEntity == freezed
          ? _value.castEntity
          : castEntity // ignore: cast_nullable_to_non_nullable
              as CastEntity,
      isCast: isCast == freezed
          ? _value.isCast
          : isCast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetCastInfo implements GetCastInfo {
  const _$GetCastInfo({required this.castEntity, required this.isCast});

  @override
  final CastEntity castEntity;
  @override
  final bool isCast;

  @override
  String toString() {
    return 'CastDetailEvent.getCastInfo(castEntity: $castEntity, isCast: $isCast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCastInfo &&
            const DeepCollectionEquality()
                .equals(other.castEntity, castEntity) &&
            const DeepCollectionEquality().equals(other.isCast, isCast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(castEntity),
      const DeepCollectionEquality().hash(isCast));

  @JsonKey(ignore: true)
  @override
  _$$GetCastInfoCopyWith<_$GetCastInfo> get copyWith =>
      __$$GetCastInfoCopyWithImpl<_$GetCastInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CastEntity castEntity, bool isCast) getCastInfo,
  }) {
    return getCastInfo(castEntity, isCast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CastEntity castEntity, bool isCast)? getCastInfo,
  }) {
    return getCastInfo?.call(castEntity, isCast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CastEntity castEntity, bool isCast)? getCastInfo,
    required TResult orElse(),
  }) {
    if (getCastInfo != null) {
      return getCastInfo(castEntity, isCast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastInfo value) getCastInfo,
  }) {
    return getCastInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCastInfo value)? getCastInfo,
  }) {
    return getCastInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastInfo value)? getCastInfo,
    required TResult orElse(),
  }) {
    if (getCastInfo != null) {
      return getCastInfo(this);
    }
    return orElse();
  }
}

abstract class GetCastInfo implements CastDetailEvent {
  const factory GetCastInfo(
      {required final CastEntity castEntity,
      required final bool isCast}) = _$GetCastInfo;

  @override
  CastEntity get castEntity;
  @override
  bool get isCast;
  @override
  @JsonKey(ignore: true)
  _$$GetCastInfoCopyWith<_$GetCastInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
