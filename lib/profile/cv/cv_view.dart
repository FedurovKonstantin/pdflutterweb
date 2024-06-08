import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';

class CVView extends StatelessWidget {
  final bool canEdit;

  const CVView({
    required this.canEdit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Иванов Иван Иванович',
          style: TextStyle(
            color: Color(0xff212529),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'Любитель поиграть в игры, 1 курс 3 группа',
          style: TextStyle(
            color: Color(0xff6C757D),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'О себе',
          style: TextStyle(
            color: Color(0xff6C757D),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: TextEditingController(
            text:
                "Японский геймдизайнер, геймдиректор, сценарист, продюсер и актёр. Кодзима известен своеобразным авторским подходом к созданию игр; ещё до прихода в игровую индустрию он увлекался литературой и кинематографом и позже рассматривал разработку игр как новую возможность для художественного творчества.",
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
          'Контакты',
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
          'Telegram',
          style: TextStyle(
            color: Color(0xff6C757D),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        TextField(
          controller: TextEditingController(
            text: "@little_ponny",
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
          'Навыки',
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
          height: 50,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Сохранить'),
        ),
      ],
    );
  }
}
