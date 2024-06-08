// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_filter_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamsFilterDataImpl _$$TeamsFilterDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamsFilterDataImpl(
      selectedSkills: (json['selectedSkills'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      selectedTracks: (json['selectedTracks'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tracks:
          (json['tracks'] as List<dynamic>).map((e) => e as String).toList(),
      selectedCourses: (json['selectedCourses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      cources:
          (json['cources'] as List<dynamic>).map((e) => e as String).toList(),
      selectedProjectTypes: (json['selectedProjectTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      projectTypes: (json['projectTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TeamsFilterDataImplToJson(
        _$TeamsFilterDataImpl instance) =>
    <String, dynamic>{
      'selectedSkills': instance.selectedSkills,
      'skills': instance.skills,
      'selectedTracks': instance.selectedTracks,
      'tracks': instance.tracks,
      'selectedCourses': instance.selectedCourses,
      'cources': instance.cources,
      'selectedProjectTypes': instance.selectedProjectTypes,
      'projectTypes': instance.projectTypes,
    };

_$TrackDataImpl _$$TrackDataImplFromJson(Map<String, dynamic> json) =>
    _$TrackDataImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TrackDataImplToJson(_$TrackDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
