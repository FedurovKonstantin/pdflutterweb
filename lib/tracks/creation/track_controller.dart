import 'dart:async';

import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';

final trackController = TrackController();

class TrackController {
  final controller = userController.controller;

  TrackController() {}

  void selectTrackType(String trackType) {
    controller.add(
      controller.value.copyWith(
        trackType: trackType,
      ),
    );
  }

  void selectCourse(int course) {
    controller.add(
      controller.value.copyWith(
        course: course,
      ),
    );
  }

//TODO: Swagger API path
  Future<void> save() async {
    final user = controller.value;
    if (user.id == null) {
      try {
        await dio.post(
          '/api/v1/tracks/register/${user.trackType == 'Бакалавр' ? 'master' : 'bachelor'}',
          data: user.toJson(),
        );
      } catch (e) {
        print(e);
      }
    } else {
      try {
        await dio.post(
          '/api/v1/tracks/changeTracksData',
          data: user.toJson(),
        );
      } catch (e) {
        print(e);
      }
    }

    userController.updateUser();
  }
}
