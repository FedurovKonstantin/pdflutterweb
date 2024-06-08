import 'package:flutter/material.dart';
import 'package:pd_web/profile/requests_view.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _Filters(),
        Flexible(
          child: ListView(
            children: [
              const TSCard(
                title: 'Mario 3.0',
                subtitle: 'Мобильная игра',
                body:
                    'Super Mario — серия компьютерных игр в жанре платформер, издаваемых компанией Nintendo. Часть медиафраншизы Mario. Первая игра в серии — Super Mario Bros. — вышла в 1985 году, последняя — Super Mario Bros. Wonder — в 2023 году. Серия Super Mario является основной линейкой игр в своей франшизе.',
                skills: ['Android', 'PHP', 'React'],
                grades: ['1'],
                skillsTitle: 'Кто нужен:',
              ),
              const TSCard(
                title: 'Mario 3.0',
                subtitle: 'Мобильная игра',
                body:
                    'Super Mario — серия компьютерных игр в жанре платформер, издаваемых компанией Nintendo. Часть медиафраншизы Mario. Первая игра в серии — Super Mario Bros. — вышла в 1985 году, последняя — Super Mario Bros. Wonder — в 2023 году. Серия Super Mario является основной линейкой игр в своей франшизе.',
                skills: ['Android', 'PHP', 'React'],
                grades: ['1'],
                skillsTitle: 'Кто нужен:',
              ),
            ]
                .map((e) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: e,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _Filters extends StatelessWidget {
  const _Filters({super.key});

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
                  maxHeight: 200,
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
              const Text(
                'Треки',
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
                  maxHeight: 200,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ...data.tracks.map(
                      (e) {
                        return Row(
                          children: [
                            Checkbox(
                              value: data.selectedTracks.contains(e),
                              onChanged: (flag) {
                                teamsController.selectTrack(e);
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
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Тип проекта',
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
                  maxHeight: 200,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ...data.projectTypes.map(
                      (e) {
                        return Row(
                          children: [
                            Checkbox(
                              value: data.selectedProjectTypes.contains(e),
                              onChanged: (flag) {
                                teamsController.selectProjectType(e);
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
            ],
          ),
        );
      },
    );
  }
}
