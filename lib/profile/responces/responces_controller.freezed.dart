// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responces_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponcesData _$ResponcesDataFromJson(Map<String, dynamic> json) {
  return _ResponcesData.fromJson(json);
}

/// @nodoc
mixin _$ResponcesData {
  List<TeamData>? get teams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponcesDataCopyWith<ResponcesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponcesDataCopyWith<$Res> {
  factory $ResponcesDataCopyWith(
          ResponcesData value, $Res Function(ResponcesData) then) =
      _$ResponcesDataCopyWithImpl<$Res, ResponcesData>;
  @useResult
  $Res call({List<TeamData>? teams});
}

/// @nodoc
class _$ResponcesDataCopyWithImpl<$Res, $Val extends ResponcesData>
    implements $ResponcesDataCopyWith<$Res> {
  _$ResponcesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = freezed,
  }) {
    return _then(_value.copyWith(
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponcesDataImplCopyWith<$Res>
    implements $ResponcesDataCopyWith<$Res> {
  factory _$$ResponcesDataImplCopyWith(
          _$ResponcesDataImpl value, $Res Function(_$ResponcesDataImpl) then) =
      __$$ResponcesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeamData>? teams});
}

/// @nodoc
class __$$ResponcesDataImplCopyWithImpl<$Res>
    extends _$ResponcesDataCopyWithImpl<$Res, _$ResponcesDataImpl>
    implements _$$ResponcesDataImplCopyWith<$Res> {
  __$$ResponcesDataImplCopyWithImpl(
      _$ResponcesDataImpl _value, $Res Function(_$ResponcesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = freezed,
  }) {
    return _then(_$ResponcesDataImpl(
      teams: freezed == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponcesDataImpl implements _ResponcesData {
  const _$ResponcesDataImpl({final List<TeamData>? teams}) : _teams = teams;

  factory _$ResponcesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponcesDataImplFromJson(json);

  final List<TeamData>? _teams;
  @override
  List<TeamData>? get teams {
    final value = _teams;
    if (value == null) return null;
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponcesData(teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponcesDataImpl &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponcesDataImplCopyWith<_$ResponcesDataImpl> get copyWith =>
      __$$ResponcesDataImplCopyWithImpl<_$ResponcesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponcesDataImplToJson(
      this,
    );
  }
}

abstract class _ResponcesData implements ResponcesData {
  const factory _ResponcesData({final List<TeamData>? teams}) =
      _$ResponcesDataImpl;

  factory _ResponcesData.fromJson(Map<String, dynamic> json) =
      _$ResponcesDataImpl.fromJson;

  @override
  List<TeamData>? get teams;
  @override
  @JsonKey(ignore: true)
  _$$ResponcesDataImplCopyWith<_$ResponcesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
