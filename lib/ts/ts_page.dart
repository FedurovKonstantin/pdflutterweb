// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pd_web/TS/cv_view.dart';
import 'package:pd_web/TS/requests_view.dart';
import 'package:pd_web/TS/responces_view.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/ts/students_view.dart';

import 'teams_view.dart';

class TSPage extends StatefulWidget {
  const TSPage({super.key});

  @override
  State<TSPage> createState() => _TSPageState();
}

class _TSPageState extends State<TSPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          Container(
            color: Colors.grey[100],
            // height: 79,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 33,
                left: 66,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 500,
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                            hintText:
                                'Навыки, название команды или имя студента',
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
                      SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Поиск',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TabBar(
                    onTap: (value) {
                      setState(() {});
                    },
                    labelColor: PDTheme.primary,
                    unselectedLabelColor: const Color(0xffADB5BD),
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    indicatorColor: PDTheme.primary,
                    tabs: [
                      const Tab(
                        text: 'Команды',
                      ),
                      const Tab(
                        text: 'Студенты',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Builder(
            builder: (context) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 20,
                  ),
                  child: [
                    const TeamsView(),
                    const StudentsView(),
                  ]![DefaultTabController.of(context).index],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
