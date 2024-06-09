import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/subjects.dart';

part 'team_controller.freezed.dart';
part 'team_controller.g.dart';

@freezed
class TeamData with _$TeamData {
  const factory TeamData({
    int? id,
    String? name,
    String? about,
    String? projectType,
    int? quantityOfStudents,
    bool? fullFlag,
    String? tags,
    List<String>? students,
  }) = _TeamData;

  factory TeamData.fromJson(Map<String, Object?> json) =>
      _$TeamDataFromJson(json);
}

final teamController = TeamController();

class TeamController {
  final controller = BehaviorSubject<TeamData>.seeded(
    userController.controller.value.currentTeam ?? TeamData(),
  );

  TeamController() {}

  // void selectTrackType(String trackType) {
  //   controller.add(
  //     controller.value.copyWith(
  //       trackType: trackType,
  //     ),
  //   );
  // }

  // void selectCourse(int course) {
  //   controller.add(
  //     controller.value.copyWith(
  //       course: course,
  //     ),
  //   );
  // }

  void selectSkill(String skill) {
    final skills = teamsController.controller.value.skills;
    final userSkills = controller.value.tags?.split(' ') ?? [];
    if (userSkills.contains(skill)) {
      controller.add(
        controller.value.copyWith(
          tags: (List.of(userSkills)..remove(skill)).join(' '),
        ),
      );
    } else {
      controller.add(
        controller.value.copyWith(
          tags: (List.of(userSkills)..add(skill)).join(' '),
        ),
      );
    }
  }

  Future<void> save() async {
    final team = controller.value;
    if (team.id == null) {
      print(team.toJson());
      try {
        await dio.post(
          '/api/v1/teams/createTeam/${userController.controller.value.trackType == 'Бакалавр' ? 'master' : 'bachelor'}',
          data: team.toJson(),
        );
      } catch (e) {
        print(e);
      }
    } else {
      try {
        await dio.post(
          '/api/v1/teams/changeTeam',
          data: team.toJson(),
        );
      } catch (e) {
        print(e);
      }
    }

    updateTeam();
  }

  Future<void> updateTeam() async {
    try {
      await userController.updateUser();
      final user = userController.controller.value;
      if (user.currentTeam != null) {
        controller.add(user.currentTeam!);
      }
    } catch (e) {
      print(e);
    }
  }
}
