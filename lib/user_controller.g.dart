// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      fio: json['fio'] as String,
      email: json['email'] as String,
      id: (json['id'] as num?)?.toInt(),
      course: (json['course'] as num?)?.toInt(),
      groupNumber: (json['groupNumber'] as num?)?.toInt(),
      contacts: json['contacts'] as String?,
      tags: json['tags'] as String?,
      trackType: json['trackType'] as String?,
      aboutSelf: json['aboutSelf'] as String?,
      trackId: (json['trackId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'fio': instance.fio,
      'email': instance.email,
      'id': instance.id,
      'course': instance.course,
      'groupNumber': instance.groupNumber,
      'contacts': instance.contacts,
      'tags': instance.tags,
      'trackType': instance.trackType,
      'aboutSelf': instance.aboutSelf,
      'trackId': instance.trackId,
    };
