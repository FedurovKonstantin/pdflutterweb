import 'package:flutter/material.dart';
import 'package:pd_web/profile/requests_view.dart';
import 'package:pd_web/theme.dart';

class StudentsView extends StatelessWidget {
  const StudentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250,
          padding: EdgeInsets.only(right: 24),
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'IOS',
                    style: TextStyle(),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'Android',
                    style: TextStyle(),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'Flutter',
                    style: TextStyle(),
                  )
                ],
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'Бакалавры 22-23',
                    style: TextStyle(),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'Магистратура 22-23',
                    style: TextStyle(),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Курс',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    '1',
                    style: TextStyle(),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    '2',
                    style: TextStyle(),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Без команды',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'Да',
                    style: TextStyle(),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
        Flexible(
          child: ListView(
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
          ),
        ),
      ],
    );
  }
}
