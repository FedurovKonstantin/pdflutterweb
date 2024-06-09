import 'package:flutter/material.dart';
import 'package:pd_web/profile/team/team_controller.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:collection';

class TeamView extends StatefulWidget {
  final bool canEdit;
  final String? teamId;

  const TeamView({
    required this.canEdit,
    super.key,
    this.teamId,
  });

  @override
  State<TeamView> createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamView> {
  final nameController = TextEditingController(
    text: teamController.controller.value.name ?? '',
  );
  final descriptionController = TextEditingController(
    text: teamController.controller.value.about ?? '',
  );

  final newMemberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TeamData>(
      stream: Rx.combineLatest2(
        teamController.controller.stream,
        teamsController.controller.stream,
        (a, b) => a,
      ),
      initialData: teamController.controller.value,
      builder: (context, snapshot) {
        final data = snapshot.requireData;
        return ListView(
          children: [
            const Text(
              'Название',
              style: TextStyle(
                color: Color(0xff212529),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              enabled: widget.canEdit,
              controller: nameController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 9,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffDEE2E6),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Описание',
              style: TextStyle(
                color: Color(0xff212529),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: descriptionController,
              maxLines: 10,
              // style: const TextStyle(
              //   color: Color(
              //     0xffADB5BD,
              //   ),
              // ),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffDEE2E6),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Список участников',
              style: TextStyle(
                color: Color(0xff212529),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '''Для формирования заявки необходимо чтобы команда соответствовала требованиям:
    1. В случае Магистратуры команда должна состоять из 3-7 человек.
    2. В случае Бакалавриата команда должна состоять из 3-7 человек. При этом 1 человек может быть 2 курса''',
              style: TextStyle(
                color: Color(0xff6C757D),
                height: 1.8,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Text(
                    'Капитан',
                    style: TextStyle(
                      color: Color(0xff6C757D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    enabled: false,
                    controller: TextEditingController(
                      text: userController.controller.value.email,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 9,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffDEE2E6),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            ...data.students
                    ?.map(
                      (it) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 9,
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              child: Text(
                                'Участник',
                                style: TextStyle(
                                  color: Color(0xff6C757D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: TextField(
                                enabled: widget.canEdit,
                                controller: TextEditingController(
                                  text: it,
                                ),
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 9,
                                    horizontal: 16,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffDEE2E6),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList() ??
                [],
            Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Text(
                    'Участник',
                    style: TextStyle(
                      color: Color(0xff6C757D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    enabled: widget.canEdit,
                    controller: newMemberController,
                    decoration: const InputDecoration(
                      hintText: 'malvina@sfedu.ru',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 9,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffDEE2E6),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton(
                onPressed: () {
                  if (widget.canEdit) {
                    setState(() {
                      teamController.controller.add(
                        data.copyWith(
                          students: List.of(data.students ?? [])
                            ..add(newMemberController.text),
                        ),
                      );
                      newMemberController.text = '';
                    });
                  }
                },
                child: const Text(
                  '+ Добавить участника',
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Кто еще нужен',
              style: TextStyle(
                color: Color(0xff212529),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Навыки',
              style: TextStyle(
                color: Color(0xff212529),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 200,
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ...teamsController.controller.value.skills.map(
                        (e) {
                          return Row(
                            children: [
                              Checkbox(
                                value:
                                    (data.tags?.split(' ') ?? []).contains(e),
                                onChanged: (flag) {
                                  if (widget.canEdit) {
                                    teamController.selectSkill(e);
                                  }
                                },
                                activeColor: PDTheme.primary,
                              ),
                              Text(
                                e,
                                style: const TextStyle(),
                              )
                            ],
                          );
                        },
                      ).toList() ??
                      [],
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  teamController.controller.add(
                    data.copyWith(
                      name: nameController.text,
                      about: descriptionController.text,
                    ),
                  );

                  teamController.save();
                },
                child: const Text('Сохранить'),
              ),
            ),
          ],
        );
      },
    );
  }
}
