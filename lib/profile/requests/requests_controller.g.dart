// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestsDataImpl _$$RequestsDataImplFromJson(Map<String, dynamic> json) =>
    _$RequestsDataImpl(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestsDataImplToJson(_$RequestsDataImpl instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
