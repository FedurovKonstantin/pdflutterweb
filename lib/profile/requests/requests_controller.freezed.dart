// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestsData _$RequestsDataFromJson(Map<String, dynamic> json) {
  return _RequestsData.fromJson(json);
}

/// @nodoc
mixin _$RequestsData {
  List<UserData>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestsDataCopyWith<RequestsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsDataCopyWith<$Res> {
  factory $RequestsDataCopyWith(
          RequestsData value, $Res Function(RequestsData) then) =
      _$RequestsDataCopyWithImpl<$Res, RequestsData>;
  @useResult
  $Res call({List<UserData>? users});
}

/// @nodoc
class _$RequestsDataCopyWithImpl<$Res, $Val extends RequestsData>
    implements $RequestsDataCopyWith<$Res> {
  _$RequestsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestsDataImplCopyWith<$Res>
    implements $RequestsDataCopyWith<$Res> {
  factory _$$RequestsDataImplCopyWith(
          _$RequestsDataImpl value, $Res Function(_$RequestsDataImpl) then) =
      __$$RequestsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserData>? users});
}

/// @nodoc
class __$$RequestsDataImplCopyWithImpl<$Res>
    extends _$RequestsDataCopyWithImpl<$Res, _$RequestsDataImpl>
    implements _$$RequestsDataImplCopyWith<$Res> {
  __$$RequestsDataImplCopyWithImpl(
      _$RequestsDataImpl _value, $Res Function(_$RequestsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$RequestsDataImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestsDataImpl implements _RequestsData {
  const _$RequestsDataImpl({final List<UserData>? users}) : _users = users;

  factory _$RequestsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestsDataImplFromJson(json);

  final List<UserData>? _users;
  @override
  List<UserData>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestsData(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsDataImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsDataImplCopyWith<_$RequestsDataImpl> get copyWith =>
      __$$RequestsDataImplCopyWithImpl<_$RequestsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestsDataImplToJson(
      this,
    );
  }
}

abstract class _RequestsData implements RequestsData {
  const factory _RequestsData({final List<UserData>? users}) =
      _$RequestsDataImpl;

  factory _RequestsData.fromJson(Map<String, dynamic> json) =
      _$RequestsDataImpl.fromJson;

  @override
  List<UserData>? get users;
  @override
  @JsonKey(ignore: true)
  _$$RequestsDataImplCopyWith<_$RequestsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
