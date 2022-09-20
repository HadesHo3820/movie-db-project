// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get searchValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) requestSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchValue)? requestSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? requestSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSearch value) requestSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestSearch value)? requestSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSearch value)? requestSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String searchValue});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? searchValue = freezed,
  }) {
    return _then(_value.copyWith(
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$RequestSearchCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$RequestSearchCopyWith(
          _$RequestSearch value, $Res Function(_$RequestSearch) then) =
      __$$RequestSearchCopyWithImpl<$Res>;
  @override
  $Res call({String searchValue});
}

/// @nodoc
class __$$RequestSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$RequestSearchCopyWith<$Res> {
  __$$RequestSearchCopyWithImpl(
      _$RequestSearch _value, $Res Function(_$RequestSearch) _then)
      : super(_value, (v) => _then(v as _$RequestSearch));

  @override
  _$RequestSearch get _value => super._value as _$RequestSearch;

  @override
  $Res call({
    Object? searchValue = freezed,
  }) {
    return _then(_$RequestSearch(
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestSearch implements RequestSearch {
  const _$RequestSearch({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'SearchEvent.requestSearch(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSearch &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchValue));

  @JsonKey(ignore: true)
  @override
  _$$RequestSearchCopyWith<_$RequestSearch> get copyWith =>
      __$$RequestSearchCopyWithImpl<_$RequestSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchValue) requestSearch,
  }) {
    return requestSearch(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchValue)? requestSearch,
  }) {
    return requestSearch?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchValue)? requestSearch,
    required TResult orElse(),
  }) {
    if (requestSearch != null) {
      return requestSearch(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestSearch value) requestSearch,
  }) {
    return requestSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestSearch value)? requestSearch,
  }) {
    return requestSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestSearch value)? requestSearch,
    required TResult orElse(),
  }) {
    if (requestSearch != null) {
      return requestSearch(this);
    }
    return orElse();
  }
}

abstract class RequestSearch implements SearchEvent {
  const factory RequestSearch({required final String searchValue}) =
      _$RequestSearch;

  @override
  String get searchValue;
  @override
  @JsonKey(ignore: true)
  _$$RequestSearchCopyWith<_$RequestSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
