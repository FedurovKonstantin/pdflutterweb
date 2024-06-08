// This file is "main.dart"
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';

part 'teams_filter_controller.freezed.dart';
part 'teams_filter_controller.g.dart';

@freezed
class TeamsFilterData with _$TeamsFilterData {
  const factory TeamsFilterData({
    required List<String> selectedSkills,
    required List<String> skills,
    required List<String> selectedTracks,
    required List<String> tracks,
    required List<String> selectedCourses,
    required List<String> cources,
    required List<String> selectedProjectTypes,
    required List<String> projectTypes,
  }) = _TeamsFilterData;

  static const initial = TeamsFilterData(
    selectedSkills: [],
    skills: [],
    selectedTracks: [],
    tracks: [],
    selectedCourses: [],
    cources: [],
    selectedProjectTypes: [],
    projectTypes: [
      'Игра',
      'Мобильное приложение',
    ],
  );

  factory TeamsFilterData.fromJson(Map<String, Object?> json) =>
      _$TeamsFilterDataFromJson(json);
}

@freezed
class TrackData with _$TrackData {
  const factory TrackData({
    required String name,
  }) = _TrackData;

  factory TrackData.fromJson(Map<String, Object?> json) =>
      _$TrackDataFromJson(json);
}

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://147.45.108.155:8080',
  ),
);

final teamsController = TeamsController();

class TeamsController {
  final controller = BehaviorSubject.seeded(TeamsFilterData.initial);

  TeamsController() {
    _loadSkills();
    _loadTracks();
  }

  void selectSkill(String skill) {
    if (controller.value.selectedSkills.contains(skill)) {
      controller.add(
        controller.value.copyWith(
          selectedSkills: List.of(controller.value.selectedSkills)
            ..remove(skill),
        ),
      );
    } else {
      controller.add(
        controller.value.copyWith(
          selectedSkills: List.of(controller.value.selectedSkills)..add(skill),
        ),
      );
    }
  }

  void selectTrack(String track) {
    if (controller.value.selectedTracks.contains(track)) {
      controller.add(
        controller.value.copyWith(
          selectedTracks: List.of(controller.value.selectedTracks)
            ..remove(track),
        ),
      );
    } else {
      controller.add(
        controller.value.copyWith(
          selectedTracks: List.of(controller.value.selectedTracks)..add(track),
        ),
      );
    }
  }

  void selectProjectType(String type) {
    if (controller.value.selectedProjectTypes.contains(type)) {
      controller.add(
        controller.value.copyWith(
          selectedProjectTypes: List.of(controller.value.selectedProjectTypes)
            ..remove(type),
        ),
      );
    } else {
      controller.add(
        controller.value.copyWith(
          selectedProjectTypes: List.of(controller.value.selectedProjectTypes)
            ..add(type),
        ),
      );
    }
  }

  Future<void> _loadSkills() async {
    final responce = await dio.get('/api/v1/tags');
    final skills = (responce.data as String).split(' ');
    controller.add(
      controller.value.copyWith(
        skills: skills,
      ),
    );
  }

  Future<void> _loadTracks() async {
    final responce = await dio.get('/api/v1/tracks/all');
    final tracks = (responce.data as List<dynamic>)
        .map(
          (e) => TrackData.fromJson(e),
        )
        .map((e) => e.name)
        .toList();
    controller.add(
      controller.value.copyWith(
        tracks: tracks,
      ),
    );
  }
}
