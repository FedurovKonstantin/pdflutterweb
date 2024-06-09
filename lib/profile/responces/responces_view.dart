import 'package:flutter/material.dart';
import 'package:pd_web/profile/responces/responces_controller.dart';
import 'package:pd_web/theme.dart';
import 'package:rxdart/rxdart.dart';

import '../requests/requests_view.dart';

class ResponcesView extends StatefulWidget {
  const ResponcesView({super.key});

  @override
  State<ResponcesView> createState() => _ResponcesViewState();
}

class _ResponcesViewState extends State<ResponcesView> {
  @override
  void initState() {
    super.initState();
    responcesController.loadResponces();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: responcesController.controller.stream,
      initialData: responcesController.controller.value,
      builder: (context, snapshot) {
        final data = snapshot.requireData;

        return ListView(
          children: data.teams
                  ?.map(
                    (e) => TSCard(
                      title: e.name ?? '',
                      subtitle: e.projectType ?? '',
                      body: e.about ?? '',
                      skills: e.tags?.split(' ') ?? [],
                      grades: [''],
                      skillsTitle: 'Кто нужен:',
                    ),
                  )
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: e,
                      ),
                    ),
                  )
                  .toList() ??
              [],
        );
      },
    );
  }
}
