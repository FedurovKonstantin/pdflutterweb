import 'package:flutter/material.dart';
import 'package:pd_web/profile/team/team_controller.dart';
import 'package:pd_web/profile/cv/cv_controller.dart';

import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/rxdart.dart';

// class TrackCard extends StatefulWidget {
//   final String title;
//   final String description;
//   final String skillsTitle;
//   final List<String> grades;
//   final String? extra;
//   final VoidCallback? onPrimary;
//   final VoidCallback? onSecondary;

//   const TrackCard({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.grades,
//     required this.skillsTitle,
//     this.extra,
//     this.onPrimary,
//     this.onSecondary,
//   });

//   @override
//   State<TrackCard> createState() => _TrackCardState();
// }

class CreationView extends StatefulWidget {
  const CreationView({
    super.key,
  });

  @override
  State<CreationView> createState() => _CreationViewState();
}

class _CreationViewState extends State<CreationView> {
  final nameController = TextEditingController(
    text: teamController.controller.value.name ?? '',
  );
  final descriptionController = TextEditingController(
    text: teamController.controller.value.about ?? '',
  );

  final newMemberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    teamController.updateTeam();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserData>(
      stream: Rx.combineLatest2(
        userController.controller.stream,
        teamsController.controller.stream,
        (a, b) => a,
      ),
      initialData: userController.controller.value,
      builder: (context, snapshot) {
        final data = snapshot.requireData;
        return ListView(children: [
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
            controller: nameController,
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
            controller: descriptionController,
            maxLines: 3,
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
            'Даты проведения',
            style: TextStyle(
              color: Color(0xff212529),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Начало',
                  style: TextStyle(
                    color: Color(0xff6C757D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(
                    text: "05.09.2023",
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
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Конец',
                  style: TextStyle(
                    color: Color(0xff6C757D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(
                    text: "10.06.2024",
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
            height: 24,
          ),
          const Text(
            'Условия',
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
                value: false,
                onChanged: (flag) {
                  cvController.selectCourse(1);
                },
                activeColor: PDTheme.primary,
              ),
              const Text(
                '1',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (flag) {
                  cvController.selectCourse(2);
                },
                activeColor: PDTheme.primary,
              ),
              const Text(
                '2',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (flag) {
                  cvController.selectCourse(3);
                },
                activeColor: PDTheme.primary,
              ),
              const Text(
                '3',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (flag) {
                  cvController.selectCourse(4);
                },
                activeColor: PDTheme.primary,
              ),
              const Text(
                '4',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (flag) {
                  cvController.selectCourse(5);
                },
                activeColor: PDTheme.primary,
              ),
              const Text(
                '5',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Список жури',
            style: TextStyle(
              color: Color(0xff212529),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: Text(
                  'Жури 1',
                  style: TextStyle(
                    color: Color(0xff6C757D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  enabled: false,
                  controller: TextEditingController(
                    text: "Иванов Иван Иванович",
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
            height: 9,
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: () {
                //TODO save track controller
              },
              child: const Text(
                'Сохранить',
              ),
            ),
          ),
        ]);
      },
    );
  }
}
