// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responces_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponcesDataImpl _$$ResponcesDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponcesDataImpl(
      teams: (json['teams'] as List<dynamic>?)
          ?.map((e) => TeamData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponcesDataImplToJson(_$ResponcesDataImpl instance) =>
    <String, dynamic>{
      'teams': instance.teams,
    };
