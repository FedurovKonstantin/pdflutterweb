import 'package:flutter/material.dart';
import 'package:pd_web/profile/requests/requests_controller.dart';
import 'package:pd_web/theme.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: requestsController.controller.stream,
        initialData: requestsController.controller.value,
        builder: (context, snapshot) {
          final data = snapshot.requireData;
          return ListView(
            children: data.users
                    ?.map(
                      (e) => TSCard(
                        title: e.fio,
                        subtitle: '',
                        body: e.aboutSelf ?? '',
                        skills: e.tags?.split(' ') ?? [],
                        grades: ['${e.course ?? 0}'],
                        skillsTitle: 'Что умею:',
                        onPrimary: () {},
                        onSecondary: () {},
                      ),
                    )
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: e,
                          ),
                        ))
                    .toList() ??
                [],
          );
        });
  }
}

class TSCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String body;
  final List<String> skills;
  final String skillsTitle;
  final List<String> grades;
  final String? extra;
  final VoidCallback? onPrimary;
  final VoidCallback? onSecondary;

  const TSCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.skills,
    required this.grades,
    required this.skillsTitle,
    this.extra,
    this.onPrimary,
    this.onSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 881,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (extra != null)
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
              child: Text(
                extra!,
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xff212529),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xff6C757D),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  body,
                  style: const TextStyle(
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
                      Text(
                        skillsTitle,
                        style: const TextStyle(
                          color: Color(
                            0xff6C757D,
                          ),
                        ),
                      ),
                      ...skills.map(
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
                ...grades.map(
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
          if (onPrimary != null && onSecondary != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: onSecondary,
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
                    onPressed: onPrimary,
                    child: const Text('Принять'),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
