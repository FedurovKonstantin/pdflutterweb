import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pd_web/profile/team/team_controller.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:collection';

class TeamViewFromId extends StatefulWidget {
  final int id;

  const TeamViewFromId({
    required this.id,
    super.key,
  });

  @override
  State<TeamViewFromId> createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamViewFromId> {
  TeamData? teamData;
  @override
  void initState() {
    super.initState();

    teamData = teamsController.controller.value.teams
        .where(
          (element) => element.id == widget.id,
        )
        .firstOrNull;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: PDTheme.primary),
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.grey[100],
              height: 83,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 33,
                  left: 66,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // context.pop();
                            context.go('/');
                          },
                          child: const Text(
                            '<- Назад к поиску команд',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 65,
                  vertical: 20,
                ),
                child: ListView(
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
                      enabled: false,
                      controller: TextEditingController(
                        text: teamData?.name ?? '',
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
                      enabled: false,
                      controller: TextEditingController(
                        text: teamData?.about ?? '',
                      ),
                      maxLines: 10,
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
                      height: 9,
                    ),
                    ...teamData?.students
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
                                        enabled: false,
                                        controller: TextEditingController(
                                          text: it.email,
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
                                            (teamData?.tags?.split(' ') ?? [])
                                                .contains(e),
                                        onChanged: (flag) {},
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
                    if (teamData != null)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            teamController.subscribeOnTeam(teamData?.id);

                            teamController.save();
                          },
                          child: const Text('Подать заявку'),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
