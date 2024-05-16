import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 881,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              const BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 0.0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(
                    0xffEBE5FC,
                  ),
                  border: Border.all(
                    color: const Color(0xffA370F7),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: const Text(
                  'На рассмотрении',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mario 3.0',
                      style: TextStyle(
                        color: Color(0xff212529),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Мобильная игра',
                      style: TextStyle(
                        color: Color(0xff6C757D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Super Mario — серия компьютерных игр в жанре платформер, издаваемых компанией Nintendo. Часть медиафраншизы Mario. Первая игра в серии — Super Mario Bros. — вышла в 1985 году, последняя — Super Mario Bros. Wonder — в 2023 году. Серия Super Mario является основной линейкой игр в своей франшизе.',
                      style: TextStyle(
                        color: Color(0xff6C757D),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color(0xffDEE2E6),
              ),
              Container(
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            'Кто нужен:',
                            style: TextStyle(
                              color: Color(
                                0xff6C757D,
                              ),
                            ),
                          ),
                          ...['Android', 'PHP', 'React'].map(
                            (it) => Container(
                              margin: const EdgeInsets.only(
                                left: 8,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffEBE5FC),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                it,
                                style: const TextStyle(
                                  color: PDTheme.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Container(
                        width: 1,
                        height: 60,
                        color: const Color(0xffDEE2E6),
                      ),
                    ),
                    const Text(
                      'Курс:',
                      style: TextStyle(
                        color: Color(
                          0xff6C757D,
                        ),
                      ),
                    ),
                    ...[
                      '1',
                    ].map(
                      (it) => Container(
                        margin: const EdgeInsets.only(
                          left: 8,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffEBE5FC),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          it,
                          style: const TextStyle(
                            color: PDTheme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color(0xffDEE2E6),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(
                            0xff6C757D,
                          ),
                        ),
                      ),
                      child: const Text('Отклонить'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Принять'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
