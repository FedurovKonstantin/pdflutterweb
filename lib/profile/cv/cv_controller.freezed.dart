// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentData _$StudentDataFromJson(Map<String, dynamic> json) {
  return _StudentData.fromJson(json);
}

/// @nodoc
mixin _$StudentData {
  String get fio => throw _privateConstructorUsedError;
  int? get course => throw _privateConstructorUsedError;
  int? get groupNumber => throw _privateConstructorUsedError;
  String? get contacts => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get trackType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentDataCopyWith<StudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDataCopyWith<$Res> {
  factory $StudentDataCopyWith(
          StudentData value, $Res Function(StudentData) then) =
      _$StudentDataCopyWithImpl<$Res, StudentData>;
  @useResult
  $Res call(
      {String fio,
      int? course,
      int? groupNumber,
      String? contacts,
      String? tags,
      String? trackType});
}

/// @nodoc
class _$StudentDataCopyWithImpl<$Res, $Val extends StudentData>
    implements $StudentDataCopyWith<$Res> {
  _$StudentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fio = null,
    Object? course = freezed,
    Object? groupNumber = freezed,
    Object? contacts = freezed,
    Object? tags = freezed,
    Object? trackType = freezed,
  }) {
    return _then(_value.copyWith(
      fio: null == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      groupNumber: freezed == groupNumber
          ? _value.groupNumber
          : groupNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      trackType: freezed == trackType
          ? _value.trackType
          : trackType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentDataImplCopyWith<$Res>
    implements $StudentDataCopyWith<$Res> {
  factory _$$StudentDataImplCopyWith(
          _$StudentDataImpl value, $Res Function(_$StudentDataImpl) then) =
      __$$StudentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fio,
      int? course,
      int? groupNumber,
      String? contacts,
      String? tags,
      String? trackType});
}

/// @nodoc
class __$$StudentDataImplCopyWithImpl<$Res>
    extends _$StudentDataCopyWithImpl<$Res, _$StudentDataImpl>
    implements _$$StudentDataImplCopyWith<$Res> {
  __$$StudentDataImplCopyWithImpl(
      _$StudentDataImpl _value, $Res Function(_$StudentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fio = null,
    Object? course = freezed,
    Object? groupNumber = freezed,
    Object? contacts = freezed,
    Object? tags = freezed,
    Object? trackType = freezed,
  }) {
    return _then(_$StudentDataImpl(
      fio: null == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as int?,
      groupNumber: freezed == groupNumber
          ? _value.groupNumber
          : groupNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      trackType: freezed == trackType
          ? _value.trackType
          : trackType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDataImpl implements _StudentData {
  const _$StudentDataImpl(
      {required this.fio,
      this.course,
      this.groupNumber,
      this.contacts,
      this.tags,
      this.trackType});

  factory _$StudentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDataImplFromJson(json);

  @override
  final String fio;
  @override
  final int? course;
  @override
  final int? groupNumber;
  @override
  final String? contacts;
  @override
  final String? tags;
  @override
  final String? trackType;

  @override
  String toString() {
    return 'StudentData(fio: $fio, course: $course, groupNumber: $groupNumber, contacts: $contacts, tags: $tags, trackType: $trackType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDataImpl &&
            (identical(other.fio, fio) || other.fio == fio) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.groupNumber, groupNumber) ||
                other.groupNumber == groupNumber) &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.trackType, trackType) ||
                other.trackType == trackType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fio, course, groupNumber, contacts, tags, trackType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      __$$StudentDataImplCopyWithImpl<_$StudentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDataImplToJson(
      this,
    );
  }
}

abstract class _StudentData implements StudentData {
  const factory _StudentData(
      {required final String fio,
      final int? course,
      final int? groupNumber,
      final String? contacts,
      final String? tags,
      final String? trackType}) = _$StudentDataImpl;

  factory _StudentData.fromJson(Map<String, dynamic> json) =
      _$StudentDataImpl.fromJson;

  @override
  String get fio;
  @override
  int? get course;
  @override
  int? get groupNumber;
  @override
  String? get contacts;
  @override
  String? get tags;
  @override
  String? get trackType;
  @override
  @JsonKey(ignore: true)
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
