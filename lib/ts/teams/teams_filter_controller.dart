// This file is "main.dart"
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pd_web/profile/team/team_controller.dart';
import 'package:pd_web/user_controller.dart';
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
    required List<TeamData> teams,
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
    teams: [],
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
    loadSkills();
    loadTracks();
    loadTeams();
  }
  Future<void> loadTeams() async {
    final user = userController.controller.value;
    try {
      final responce = await dio.get(
        '/api/v1/teams/allTeamsByCurrentTrack',
        queryParameters: {'type': user.trackType},
      );
      final teams = (responce.data as List<dynamic>)
          .map((it) => TeamData.fromJson(it))
          .toList();

      final selectedSkills = controller.value.selectedSkills;

      if (selectedSkills.isNotEmpty) {
        teams.retainWhere(
          (it) => (it.tags?.split(' ') ?? []).any(
            (element) => selectedSkills.contains(
              element,
            ),
          ),
        );
      }

      controller.add(
        controller.value.copyWith(
          teams: teams,
        ),
      );
      print(teams);
    } catch (e, s) {
      print(s);
    }
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
    loadTeams();
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

  Future<void> loadSkills() async {
    final responce = await dio.get('/api/v1/tags');
    final skills = (responce.data as String).split(' ');
    controller.add(
      controller.value.copyWith(
        skills: skills,
      ),
    );
  }

  Future<void> loadTracks() async {
    final type = userController.controller.value.trackType;
    if (type == null) {
      return;
    }
    try {
      print('wer');
      final responce = await dio.get(
        '/api/v1/tracks/currentTrack',
        queryParameters: {"type": type},
      );
      final tracks = TrackData.fromJson(responce.data);
      controller.add(
        controller.value.copyWith(
          tracks: [tracks.name],
        ),
      );
    } catch (e, s) {
      print(s);
    }
  }
}
