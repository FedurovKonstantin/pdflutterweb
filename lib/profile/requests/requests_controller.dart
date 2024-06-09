import 'dart:async';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pd_web/profile/team/team_controller.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/subjects.dart';

import '../responces/responces_controller.dart';

part 'requests_controller.freezed.dart';
part 'requests_controller.g.dart';

@freezed
class RequestsData with _$RequestsData {
  const factory RequestsData({
    List<UserData>? users,
  }) = _RequestsData;

  factory RequestsData.fromJson(Map<String, Object?> json) =>
      _$RequestsDataFromJson(json);
}

final requestsController = RequestsController();

class RequestsController {
  final controller = BehaviorSubject<RequestsData>.seeded(
    RequestsData(),
  );

  RequestsController() {
    loadRequests();
  }

  Future<void> loadRequests() async {
    await teamController.updateTeam();
    final id = teamController.controller.value.id;

    if (id != null) {
      try {
        final responce = await dio.get(
          '/api/v1/teams/candidates',
          queryParameters: {
            'teamId': id,
          },
        );

        final result = RequestsData.fromJson({'users': responce.data});

        controller.add(result);
      } on DioException catch (e, s) {
        controller.add(
          controller.value.copyWith(
            users: [],
          ),
        );
      } catch (e, s) {
        print(s);
      }
    }
  }
}
