import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pd_web/profile/team/team_controller.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/subjects.dart';

part 'responces_controller.freezed.dart';
part 'responces_controller.g.dart';

@freezed
class ResponcesData with _$ResponcesData {
  const factory ResponcesData({
    List<TeamData>? teams,
  }) = _ResponcesData;

  factory ResponcesData.fromJson(Map<String, Object?> json) =>
      _$ResponcesDataFromJson(json);
}

final responcesController = ResponcesController();

class ResponcesController {
  final controller = BehaviorSubject<ResponcesData>.seeded(
    ResponcesData(),
  );

  ResponcesController() {
    _loadResponces();
  }

  Future<void> _loadResponces() async {
    final id = userController.controller.value.id;

    if (id != null) {
      final responce = await dio.get(
        '/api/v1/students/getSubscriptionsById',
        queryParameters: {'studentId': id},
      );

      final result = ResponcesData.fromJson(responce.data);

      controller.add(result);
    }
  }
}
