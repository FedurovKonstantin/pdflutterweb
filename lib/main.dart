import 'package:flutter/material.dart';
import 'package:pd_web/profile/profile_page.dart';
import 'package:pd_web/theme.dart';

import 'ts/ts_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late var currentContent = content.keys.toList()[0];

  final content = <String, Widget>{
    "Команды и студенты": const TSPage(),
    "Профиль": const ProfilePage(),
    "Треки": Container(),
    "Админка": Container(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: PDTheme.primary),
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 57,
              color: PDTheme.primary,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: const Text(
                      'ПДКоманды',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ...content.keys
                      .map(
                        (it) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentContent = it;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: Text(
                              it,
                              style: TextStyle(
                                color: currentContent == it
                                    ? const Color(0xffF8F9FA)
                                    : Colors.grey[350],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
            Expanded(
              child: content[currentContent]!,
            ),
          ],
        ),
      ),
    );
  }
}
