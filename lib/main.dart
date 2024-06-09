import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pd_web/profile/profile_page.dart';
import 'package:pd_web/profile/team/team_view.dart';
import 'package:pd_web/profile/team/team_view_from_id.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/tracks/track_page.dart';
import 'package:pd_web/user_controller.dart';
import 'package:url_strategy/url_strategy.dart';
import 'dart:js' as js;
import 'ts/ts_page.dart';

final _router = GoRouter(
  redirect: (context, state) async {
    // userController.setUser(
    //   UserData(
    //     fio: 'Кроль Олег Владимирович',
    //     email: 'krol@sfedu.ru',
    //   ),
    // );
    userController.updateUser();
    final token = state.uri.queryParameters['token'];
    if (token != null && state.fullPath == '/') {
      final decodedToken = JwtDecoder.decode(token);
      userController.setUser(
        UserData(
          fio: decodedToken['name'],
          email: decodedToken['preferred_username'],
        ),
      );

      userController.updateUser();
      return '/';
    } else if (userController.controller.valueOrNull == null) {
      return '/sign_in';
    }
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Home(),
      routes: [
        GoRoute(
          path: 'team',
          builder: (context, state) {
            return TeamViewFromId(
              id: int.parse(state.uri.queryParameters['id'] as String),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => Center(
        child: ElevatedButton(
          onPressed: () {
            final link =
                'https://147.45.108.155:8080/oauth2/authorization/azure';
            js.context.callMethod(
              'open',
              [link],
            );
          },
          child: Text(
            'Войти',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    ),
  ],
);
void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: PDTheme.primary),
      ),
      routerConfig: _router,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late var currentContent = content.keys.toList()[0];

  late final content = <String, Widget>{
    "Команды и студенты": const TSPage(),
    "Профиль": const ProfilePage(),
    "Треки": TrackPage(),
    "Админка": Container(),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
