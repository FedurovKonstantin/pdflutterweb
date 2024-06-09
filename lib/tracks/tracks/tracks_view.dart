import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';

import '../../profile/requests/requests_view.dart';

class TracksView extends StatelessWidget {
  const TracksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                          //TODO Tracks Card
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
