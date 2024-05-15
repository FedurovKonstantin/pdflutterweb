import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';

class TeamView extends StatelessWidget {
  const TeamView({super.key});

  @override
  Widget build(BuildContext context) {
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
          controller: TextEditingController(
            text: "Mario 3.0",
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
          controller: TextEditingController(
            text:
                "Super Mario — серия компьютерных игр в жанре платформер, издаваемых компанией Nintendo. Часть медиафраншизы Mario. Первая игра в серии — Super Mario Bros. — вышла в 1985 году, последняя — Super Mario Bros. Wonder — в 2023 году. Серия Super Mario является основной линейкой игр в своей франшизе.",
          ),
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
          'Тип проекта',
          style: TextStyle(
            color: Color(0xff212529),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (_) {},
              activeColor: PDTheme.primary,
            ),
            const Text(
              'Мобильное приложение',
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
              'Сайт',
              style: TextStyle(),
            )
          ],
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
1. Минимальное количество человек - 3
2. Обязательно должен быть один студент 2 курса и один студент 1 курса
3. Максимальное количество студентов 1 курса - 3 человека
4. Максимальное количество студентов 2 курса - 3 человека''',
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
            Container(
              width: 100,
              child: const Text(
                'Капитан',
                style: TextStyle(
                  color: Color(0xff6C757D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                controller: TextEditingController(
                  text: "little_ponny@sfedu.ru",
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
        SizedBox(
          height: 9,
        ),
        Row(
          children: [
            Container(
              width: 100,
              child: const Text(
                'Участник 1',
                style: TextStyle(
                  color: Color(0xff6C757D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                controller: TextEditingController(
                  text: "little_ponny@sfedu.ru",
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
          height: 16,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
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
          'Курс',
          style: TextStyle(
            color: Color(0xff212529),
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
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {},
              activeColor: PDTheme.primary,
            ),
            const Text(
              '3',
              style: TextStyle(),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Сохранить'),
          ),
        ),
      ],
    );
  }
}
