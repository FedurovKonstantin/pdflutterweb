import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';

import '../../profile/requests/requests_view.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _Filters(),
        StreamBuilder(
            stream: teamsController.controller.stream,
            initialData: teamsController.controller.value,
            builder: (context, snapshot) {
              final data = snapshot.requireData;

              return Flexible(
                child: ListView(
                  children: data.teams
                      .map(
                        (e) => TSCard(
                          title: e.name ?? '',
                          subtitle: '',
                          body: e.about ?? '',
                          skills: e.tags?.split(' ') ?? [],
                          grades: [],
                          skillsTitle: 'Кто нужен:',
                        ),
                      )
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: e,
                            ),
                          ))
                      .toList(),
                ),
              );
            }),
      ],
    );
  }
}

class _Filters extends StatefulWidget {
  const _Filters({super.key});

  @override
  State<_Filters> createState() => _FiltersState();
}

class _FiltersState extends State<_Filters> {
  @override
  void initState() {
    super.initState();
    teamsController.loadSkills();
    teamsController.loadTracks();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: teamsController.controller.stream,
      initialData: teamsController.controller.value,
      builder: (context, snapshot) {
        final data = snapshot.requireData;

        return Container(
          width: 250,
          padding: const EdgeInsets.only(right: 24),
          child: ListView(
            children: [
              const Text(
                'Навыки',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                constraints: const BoxConstraints(
                  maxHeight: 500,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ...data.skills.map(
                      (e) {
                        return Row(
                          children: [
                            Checkbox(
                              value: data.selectedSkills.contains(e),
                              onChanged: (flag) {
                                teamsController.selectSkill(e);
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
                    ).toList(),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              // const Text(
              //   'Треки',
              //   style: TextStyle(
              //     color: Color(0xff212529),
              //     fontSize: 20,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // const SizedBox(
              //   height: 8,
              // ),
              // Container(
              //   constraints: const BoxConstraints(
              //     maxHeight: 200,
              //   ),
              //   child: ListView(
              //     shrinkWrap: true,
              //     children: [
              //       ...data.tracks.map(
              //         (e) {
              //           return Row(
              //             children: [
              //               Checkbox(
              //                 value: data.selectedTracks.contains(e),
              //                 onChanged: (flag) {
              //                   teamsController.selectTrack(e);
              //                 },
              //                 activeColor: PDTheme.primary,
              //               ),
              //               Text(
              //                 e,
              //                 style: const TextStyle(),
              //               )
              //             ],
              //           );
              //         },
              //       ).toList(),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 18,
              // ),
              // const Text(
              //   'Курс',
              //   style: TextStyle(
              //     color: Color(0xff212529),
              //     fontSize: 20,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // const SizedBox(
              //   height: 8,
              // ),
              // Row(
              //   children: [
              //     Checkbox(
              //       value: true,
              //       onChanged: (_) {},
              //       activeColor: PDTheme.primary,
              //     ),
              //     const Text(
              //       '1',
              //       style: TextStyle(),
              //     )
              //   ],
              // ),
              // Row(
              //   children: [
              //     Checkbox(
              //       value: false,
              //       onChanged: (_) {},
              //       activeColor: PDTheme.primary,
              //     ),
              //     const Text(
              //       '2',
              //       style: TextStyle(),
              //     )
              //   ],
              // ),
              // const SizedBox(
              //   height: 18,
              // ),
              // const Text(
              //   'Тип проекта',
              //   style: TextStyle(
              //     color: Color(0xff212529),
              //     fontSize: 20,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // const SizedBox(
              //   height: 8,
              // ),
              // Container(
              //   constraints: const BoxConstraints(
              //     maxHeight: 200,
              //   ),
              //   child: ListView(
              //     shrinkWrap: true,
              //     children: [
              //       ...data.projectTypes.map(
              //         (e) {
              //           return Row(
              //             children: [
              //               Checkbox(
              //                 value: data.selectedProjectTypes.contains(e),
              //                 onChanged: (flag) {
              //                   teamsController.selectProjectType(e);
              //                 },
              //                 activeColor: PDTheme.primary,
              //               ),
              //               Text(
              //                 e,
              //                 style: const TextStyle(),
              //               )
              //             ],
              //           );
              //         },
              //       ).toList(),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 18,
              // ),
            ],
          ),
        );
      },
    );
  }
}
