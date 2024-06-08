import 'dart:async';

import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/subjects.dart';

final cvController = CVController();

class CVController {
  final _controller = userController.controller;

  CVController() {}

  void selectTrackType(String trackType) {
    _controller.add(
      _controller.value.copyWith(
        trackType: trackType,
      ),
    );
  }

  void selectCourse(int course) {
    _controller.add(
      _controller.value.copyWith(
        course: course,
      ),
    );
  }

  void selectSkill(String skill) {
    final skills = teamsController.controller.value.skills;
    final userSkills = _controller.value.tags?.split(' ') ?? [];
    if (userSkills.contains(skill)) {
      _controller.add(
        _controller.value.copyWith(
          tags: (List.of(userSkills)..remove(skill)).join(' '),
        ),
      );
    } else {
      _controller.add(
        _controller.value.copyWith(
          tags: (List.of(userSkills)..add(skill)).join(' '),
        ),
      );
    }
  }

  Future<void> save() async {
    final user = _controller.value;
    if (user.id == null) {
      try {
        await dio.post(
          '/api/v1/students/register/${user.trackType == 'Бакалавр' ? 'master' : 'bachelor'}',
          data: user.toJson(),
        );
      } catch (e) {
        print(e);
      }
    } else {
      try {
        await dio.post(
          '/api/v1/students/changeStudentData',
          data: user.toJson(),
        );
      } catch (e) {
        print(e);
      }
    }

    userController.updateUser();
  }
}
