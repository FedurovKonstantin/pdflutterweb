import 'package:flutter/material.dart';
import 'package:pd_web/profile/requests_view.dart';
import 'package:pd_web/theme.dart';

class TeamsView extends StatelessWidget {
  const TeamsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (_) {},
                    activeColor: PDTheme.primary,
                  ),
                  const Text(
                    'Игра',
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
                    'Мобильное приложение',
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
