import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:rxdart/subjects.dart';

import 'profile/team/team_controller.dart';

part 'user_controller.freezed.dart';
part 'user_controller.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String fio,
    required String email,
    int? id,
    int? course,
    int? groupNumber,
    String? contacts,
    String? tags,
    String? trackType,
    String? aboutSelf,
    int? trackId,
    TeamData? currentTeam,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

final userController = UserController();

class UserController {
  final controller = BehaviorSubject<UserData>();

  void setUser(UserData user) {
    controller.add(user);
  }

  Future<void> updateUser() async {
    try {
      final responce = await dio.get(
        '/api/v1/students/${controller.value.email.split('@').first}',
      );

      final user = UserData.fromJson(responce.data);
      controller.add(user);

      if (user.trackId != null) {
        final responce = await dio.get(
          '/api/v1/tracks/trackById',
          queryParameters: {'trackId': user.trackId},
        );

        controller.add(
          user.copyWith(
            trackType: responce.data['type'],
          ),
        );
      }

      teamsController.loadTeams();
    } catch (e, s) {
      print(s);
    }
  }
}
