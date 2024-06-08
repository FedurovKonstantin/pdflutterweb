import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';

part 'user_controller.freezed.dart';
part 'user_controller.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String fio,
    required String email,
    int? course,
    int? groupNumber,
    String? contacts,
    String? tags,
    String? trackType,
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
}
