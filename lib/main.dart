import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pd_web/profile/profile_page.dart';
import 'package:pd_web/theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'dart:js' as js;
import 'ts/ts_page.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => Center(
        child: ElevatedButton(
          onPressed: () {
            final link = state.uri.queryParameters['link'];
            js.context.callMethod(
              'open',
              [link],
            );
          },
          child: Text('Войти'),
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
    "Треки": Container(),
    "Админка": Container(),
  };

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
