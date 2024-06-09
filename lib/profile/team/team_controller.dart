import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pd_web/profile/requests/requests_controller.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/subjects.dart';

part 'team_controller.freezed.dart';
part 'team_controller.g.dart';

@freezed
class TeamData with _$TeamData {
  const factory TeamData({
    @JsonKey(includeIfNull: false) int? id,
    int? captainId,
    String? name,
    String? about,
    String? projectType,
    int? quantityOfStudents,
    bool? fullFlag,
    String? tags,
    List<UserData>? students,
    String? candidates,
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

  Future<void> approveStudent(
    int? studentId,
  ) async {
    final teamId = controller.value.id;
    try {
      final responce = await dio.get(
        '/api/v1/teams/approveStudent',
        queryParameters: {
          'studentId': studentId,
          'teamId': teamId,
        },
      );
      print(responce.data);
    } catch (e, s) {
      print(s);
    }

    requestsController.loadRequests();
  }

  Future<void> declineStudent(
    int? studentId,
  ) async {
    final teamId = controller.value.id;
    try {
      final responce = await dio.get(
        '/api/v1/teams/declineStudent',
        queryParameters: {
          'studentId': studentId,
          'teamId': teamId,
        },
      );
      print(responce.data);
    } catch (e, s) {
      print(s);
    }

    requestsController.loadRequests();
  }

  Future<void> subscribeOnTeam(int? teamId) async {
    try {
      final responce = await dio.get(
        '/api/v1/teams/subscribe',
        queryParameters: {
          'studentId': userController.controller.value.id,
          'teamId': teamId
        },
      );

      print(responce.data);
    } catch (e, s) {
      print(s);
    }
  }

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

    controller.add(
      team.copyWith(
        captainId: userController.controller.value.id,
      ),
    );
    if (team.id == null) {
      final team = controller.value;
      print(team.toJson());
      try {
        await dio.post(
          '/api/v1/teams/createTeam/${userController.controller.value.trackType}',
          data: team.toJson(),
        );
      } catch (e, s) {
        print(s);
      }
    } else {
      try {
        await dio.post(
          '/api/v1/teams/changeTeam',
          data: team.toJson(),
        );
      } catch (e, s) {
        print(s);
      }
    }
  }

  Future<void> updateTeam() async {
    try {
      await userController.updateUser();
      final user = userController.controller.value;
      if (user.currentTeam != null) {
        final responce = await dio.get(
          '/api/v1/teams/getTeamById',
          queryParameters: {
            'teamId': user.currentTeam?.id,
          },
        );
        final team = TeamData.fromJson(responce.data);
        print(team.toJson());
        userController.controller.add(
          user.copyWith(
            currentTeam: team,
          ),
        );
        final updatedUser = userController.controller.value;
        controller.add(updatedUser.currentTeam!);
      }
    } catch (e, s) {
      print(s);
    }
  }
}
