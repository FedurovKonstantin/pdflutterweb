import 'package:flutter/material.dart';
import 'package:pd_web/profile/cv/cv_controller.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/teams/teams_filter_controller.dart';
import 'package:pd_web/user_controller.dart';
import 'package:rxdart/rxdart.dart';

class CVView extends StatefulWidget {
  final bool canEdit;

  const CVView({
    required this.canEdit,
    super.key,
  });

  @override
  State<CVView> createState() => _CVViewState();
}

class _CVViewState extends State<CVView> {
  final aboutController = TextEditingController(
    text: userController.controller.value.aboutSelf ?? '',
  );
  final contactsController = TextEditingController(
    text: userController.controller.value.contacts ?? '',
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Rx.combineLatest2(
        userController.controller.stream,
        teamsController.controller.stream,
        (a, b) => a,
      ),
      initialData: userController.controller.value,
      builder: (_, snapshot) {
        final data = snapshot.requireData;

        if (contactsController.text != data.contacts) {
          contactsController.text = data.contacts ?? '';
        }

        if (aboutController.text != data.contacts) {
          aboutController.text = data.aboutSelf ?? '';
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    userController.controller.value.fio!,
                    style: const TextStyle(
                      color: Color(0xff212529),
                      fontSize: 24,
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
                    enabled: widget.canEdit,
                    controller: aboutController,
                    onChanged: (value) {
                      userController.controller.add(
                        data.copyWith(aboutSelf: value),
                      );
                    },
                    maxLines: 10,
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
                    enabled: widget.canEdit,
                    controller: contactsController,
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
                    height: 8,
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 200,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        ...teamsController.controller.value.skills.map(
                          (e) {
                            return Row(
                              children: [
                                Checkbox(
                                  value:
                                      (data.tags?.split(' ') ?? []).contains(e),
                                  onChanged: (flag) {
                                    if (widget.canEdit) {
                                      cvController.selectSkill(e);
                                    }
                                  },
                                  activeColor: PDTheme.primary,
                                ),
                                Text(
                                  e,
                                  style: const TextStyle(),
                                )
                              ],
                            );
                          },
                        ).toList(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Уровень обучения',
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
                      Radio(
                        groupValue: data.trackType,
                        value: 'bachelor',
                        onChanged: (flag) {
                          if (widget.canEdit) {
                            cvController.selectTrackType('bachelor');
                          }
                        },
                        activeColor: PDTheme.primary,
                      ),
                      const Text(
                        'Бакалавр',
                        style: TextStyle(),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        groupValue: data.trackType,
                        value: 'master',
                        onChanged: (flag) {
                          if (widget.canEdit) {
                            cvController.selectTrackType('master');
                          }
                        },
                        activeColor: PDTheme.primary,
                      ),
                      const Text(
                        'Магистр',
                        style: TextStyle(),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
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
                      Radio(
                        groupValue: data.course,
                        value: 1,
                        onChanged: (flag) {
                          if (widget.canEdit) {
                            cvController.selectCourse(1);
                          }
                        },
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
                      Radio(
                        groupValue: data.course,
                        value: 2,
                        onChanged: (flag) {
                          if (widget.canEdit) {
                            cvController.selectCourse(2);
                          }
                        },
                        activeColor: PDTheme.primary,
                      ),
                      const Text(
                        '2',
                        style: TextStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            if (widget.canEdit)
              ElevatedButton(
                onPressed: () {
                  userController.controller.add(
                    data.copyWith(
                      aboutSelf: aboutController.text,
                      contacts: contactsController.text,
                    ),
                  );
                  cvController.save();
                },
                child: const Text('Сохранить'),
              ),
          ],
        );
      },
    );
  }
}
