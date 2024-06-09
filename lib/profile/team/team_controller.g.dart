// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamDataImpl _$$TeamDataImplFromJson(Map<String, dynamic> json) =>
    _$TeamDataImpl(
      id: (json['id'] as num?)?.toInt(),
      captainId: (json['captainId'] as num?)?.toInt(),
      name: json['name'] as String?,
      about: json['about'] as String?,
      projectType: json['projectType'] as String?,
      quantityOfStudents: (json['quantityOfStudents'] as num?)?.toInt(),
      fullFlag: json['fullFlag'] as bool?,
      tags: json['tags'] as String?,
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidates: json['candidates'] as String?,
    );

Map<String, dynamic> _$$TeamDataImplToJson(_$TeamDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['captainId'] = instance.captainId;
  val['name'] = instance.name;
  val['about'] = instance.about;
  val['projectType'] = instance.projectType;
  val['quantityOfStudents'] = instance.quantityOfStudents;
  val['fullFlag'] = instance.fullFlag;
  val['tags'] = instance.tags;
  val['students'] = instance.students;
  val['candidates'] = instance.candidates;
  return val;
}
