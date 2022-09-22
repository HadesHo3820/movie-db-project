// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRequestToken,
    required TResult Function(String username, String password) requestLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRequestToken,
    TResult Function(String username, String password)? requestLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRequestToken,
    TResult Function(String username, String password)? requestLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestToken value) getRequestToken,
    required TResult Function(RequestLogin value) requestLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRequestToken value)? getRequestToken,
    TResult Function(RequestLogin value)? requestLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestToken value)? getRequestToken,
    TResult Function(RequestLogin value)? requestLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$GetRequestTokenCopyWith<$Res> {
  factory _$$GetRequestTokenCopyWith(
          _$GetRequestToken value, $Res Function(_$GetRequestToken) then) =
      __$$GetRequestTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRequestTokenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$GetRequestTokenCopyWith<$Res> {
  __$$GetRequestTokenCopyWithImpl(
      _$GetRequestToken _value, $Res Function(_$GetRequestToken) _then)
      : super(_value, (v) => _then(v as _$GetRequestToken));

  @override
  _$GetRequestToken get _value => super._value as _$GetRequestToken;
}

/// @nodoc

class _$GetRequestToken implements GetRequestToken {
  const _$GetRequestToken();

  @override
  String toString() {
    return 'AuthEvent.getRequestToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRequestToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRequestToken,
    required TResult Function(String username, String password) requestLogin,
  }) {
    return getRequestToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRequestToken,
    TResult Function(String username, String password)? requestLogin,
  }) {
    return getRequestToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRequestToken,
    TResult Function(String username, String password)? requestLogin,
    required TResult orElse(),
  }) {
    if (getRequestToken != null) {
      return getRequestToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestToken value) getRequestToken,
    required TResult Function(RequestLogin value) requestLogin,
  }) {
    return getRequestToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRequestToken value)? getRequestToken,
    TResult Function(RequestLogin value)? requestLogin,
  }) {
    return getRequestToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestToken value)? getRequestToken,
    TResult Function(RequestLogin value)? requestLogin,
    required TResult orElse(),
  }) {
    if (getRequestToken != null) {
      return getRequestToken(this);
    }
    return orElse();
  }
}

abstract class GetRequestToken implements AuthEvent {
  const factory GetRequestToken() = _$GetRequestToken;
}

/// @nodoc
abstract class _$$RequestLoginCopyWith<$Res> {
  factory _$$RequestLoginCopyWith(
          _$RequestLogin value, $Res Function(_$RequestLogin) then) =
      __$$RequestLoginCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$$RequestLoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$RequestLoginCopyWith<$Res> {
  __$$RequestLoginCopyWithImpl(
      _$RequestLogin _value, $Res Function(_$RequestLogin) _then)
      : super(_value, (v) => _then(v as _$RequestLogin));

  @override
  _$RequestLogin get _value => super._value as _$RequestLogin;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RequestLogin(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestLogin implements RequestLogin {
  const _$RequestLogin({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.requestLogin(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLogin &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$RequestLoginCopyWith<_$RequestLogin> get copyWith =>
      __$$RequestLoginCopyWithImpl<_$RequestLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRequestToken,
    required TResult Function(String username, String password) requestLogin,
  }) {
    return requestLogin(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRequestToken,
    TResult Function(String username, String password)? requestLogin,
  }) {
    return requestLogin?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRequestToken,
    TResult Function(String username, String password)? requestLogin,
    required TResult orElse(),
  }) {
    if (requestLogin != null) {
      return requestLogin(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestToken value) getRequestToken,
    required TResult Function(RequestLogin value) requestLogin,
  }) {
    return requestLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRequestToken value)? getRequestToken,
    TResult Function(RequestLogin value)? requestLogin,
  }) {
    return requestLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestToken value)? getRequestToken,
    TResult Function(RequestLogin value)? requestLogin,
    required TResult orElse(),
  }) {
    if (requestLogin != null) {
      return requestLogin(this);
    }
    return orElse();
  }
}

abstract class RequestLogin implements AuthEvent {
  const factory RequestLogin(
      {required final String username,
      required final String password}) = _$RequestLogin;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$RequestLoginCopyWith<_$RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
