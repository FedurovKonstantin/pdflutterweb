// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      fio: json['fio'] as String,
      email: json['email'] as String,
      course: (json['course'] as num?)?.toInt(),
      groupNumber: (json['groupNumber'] as num?)?.toInt(),
      contacts: json['contacts'] as String?,
      tags: json['tags'] as String?,
      trackType: json['trackType'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'fio': instance.fio,
      'email': instance.email,
      'course': instance.course,
      'groupNumber': instance.groupNumber,
      'contacts': instance.contacts,
      'tags': instance.tags,
      'trackType': instance.trackType,
    };
