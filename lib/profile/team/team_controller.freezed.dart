// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamData _$TeamDataFromJson(Map<String, dynamic> json) {
  return _TeamData.fromJson(json);
}

/// @nodoc
mixin _$TeamData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get projectType => throw _privateConstructorUsedError;
  int? get quantityOfStudents => throw _privateConstructorUsedError;
  bool? get fullFlag => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  List<String>? get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamDataCopyWith<TeamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDataCopyWith<$Res> {
  factory $TeamDataCopyWith(TeamData value, $Res Function(TeamData) then) =
      _$TeamDataCopyWithImpl<$Res, TeamData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? about,
      String? projectType,
      int? quantityOfStudents,
      bool? fullFlag,
      String? tags,
      List<String>? students});
}

/// @nodoc
class _$TeamDataCopyWithImpl<$Res, $Val extends TeamData>
    implements $TeamDataCopyWith<$Res> {
  _$TeamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? about = freezed,
    Object? projectType = freezed,
    Object? quantityOfStudents = freezed,
    Object? fullFlag = freezed,
    Object? tags = freezed,
    Object? students = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      projectType: freezed == projectType
          ? _value.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityOfStudents: freezed == quantityOfStudents
          ? _value.quantityOfStudents
          : quantityOfStudents // ignore: cast_nullable_to_non_nullable
              as int?,
      fullFlag: freezed == fullFlag
          ? _value.fullFlag
          : fullFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamDataImplCopyWith<$Res>
    implements $TeamDataCopyWith<$Res> {
  factory _$$TeamDataImplCopyWith(
          _$TeamDataImpl value, $Res Function(_$TeamDataImpl) then) =
      __$$TeamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? about,
      String? projectType,
      int? quantityOfStudents,
      bool? fullFlag,
      String? tags,
      List<String>? students});
}

/// @nodoc
class __$$TeamDataImplCopyWithImpl<$Res>
    extends _$TeamDataCopyWithImpl<$Res, _$TeamDataImpl>
    implements _$$TeamDataImplCopyWith<$Res> {
  __$$TeamDataImplCopyWithImpl(
      _$TeamDataImpl _value, $Res Function(_$TeamDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? about = freezed,
    Object? projectType = freezed,
    Object? quantityOfStudents = freezed,
    Object? fullFlag = freezed,
    Object? tags = freezed,
    Object? students = freezed,
  }) {
    return _then(_$TeamDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      projectType: freezed == projectType
          ? _value.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityOfStudents: freezed == quantityOfStudents
          ? _value.quantityOfStudents
          : quantityOfStudents // ignore: cast_nullable_to_non_nullable
              as int?,
      fullFlag: freezed == fullFlag
          ? _value.fullFlag
          : fullFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamDataImpl implements _TeamData {
  const _$TeamDataImpl(
      {this.id,
      this.name,
      this.about,
      this.projectType,
      this.quantityOfStudents,
      this.fullFlag,
      this.tags,
      final List<String>? students})
      : _students = students;

  factory _$TeamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? about;
  @override
  final String? projectType;
  @override
  final int? quantityOfStudents;
  @override
  final bool? fullFlag;
  @override
  final String? tags;
  final List<String>? _students;
  @override
  List<String>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeamData(id: $id, name: $name, about: $about, projectType: $projectType, quantityOfStudents: $quantityOfStudents, fullFlag: $fullFlag, tags: $tags, students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.projectType, projectType) ||
                other.projectType == projectType) &&
            (identical(other.quantityOfStudents, quantityOfStudents) ||
                other.quantityOfStudents == quantityOfStudents) &&
            (identical(other.fullFlag, fullFlag) ||
                other.fullFlag == fullFlag) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      about,
      projectType,
      quantityOfStudents,
      fullFlag,
      tags,
      const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamDataImplCopyWith<_$TeamDataImpl> get copyWith =>
      __$$TeamDataImplCopyWithImpl<_$TeamDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamDataImplToJson(
      this,
    );
  }
}

abstract class _TeamData implements TeamData {
  const factory _TeamData(
      {final int? id,
      final String? name,
      final String? about,
      final String? projectType,
      final int? quantityOfStudents,
      final bool? fullFlag,
      final String? tags,
      final List<String>? students}) = _$TeamDataImpl;

  factory _TeamData.fromJson(Map<String, dynamic> json) =
      _$TeamDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get about;
  @override
  String? get projectType;
  @override
  int? get quantityOfStudents;
  @override
  bool? get fullFlag;
  @override
  String? get tags;
  @override
  List<String>? get students;
  @override
  @JsonKey(ignore: true)
  _$$TeamDataImplCopyWith<_$TeamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
