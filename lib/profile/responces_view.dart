import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';

import 'requests_view.dart';

class ResponcesView extends StatelessWidget {
  const ResponcesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const TSCard(
          title: 'Иванов Иван Иванович',
          subtitle: 'Любитель поиграть в игры',
          body:
              'Японский геймдизайнер, геймдиректор, сценарист, продюсер и актёр. Кодзима известен своеобразным авторским подходом к созданию игр; ещё до прихода в игровую индустрию он увлекался литературой и кинематографом и позже рассматривал разработку игр как новую возможность для художественного творчества.',
          skills: ['Android', 'PHP', 'React'],
          grades: ['1'],
          skillsTitle: 'Что умею:',
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
    );
  }
}
