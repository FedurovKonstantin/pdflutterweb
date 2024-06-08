// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDataImpl _$$StudentDataImplFromJson(Map<String, dynamic> json) =>
    _$StudentDataImpl(
      fio: json['fio'] as String,
      course: (json['course'] as num?)?.toInt(),
      groupNumber: (json['groupNumber'] as num?)?.toInt(),
      contacts: json['contacts'] as String?,
      tags: json['tags'] as String?,
      trackType: json['trackType'] as String?,
    );

Map<String, dynamic> _$$StudentDataImplToJson(_$StudentDataImpl instance) =>
    <String, dynamic>{
      'fio': instance.fio,
      'course': instance.course,
      'groupNumber': instance.groupNumber,
      'contacts': instance.contacts,
      'tags': instance.tags,
      'trackType': instance.trackType,
    };
