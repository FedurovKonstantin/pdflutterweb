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
    );

Map<String, dynamic> _$$TeamDataImplToJson(_$TeamDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'captainId': instance.captainId,
      'name': instance.name,
      'about': instance.about,
      'projectType': instance.projectType,
      'quantityOfStudents': instance.quantityOfStudents,
      'fullFlag': instance.fullFlag,
      'tags': instance.tags,
      'students': instance.students,
    };
