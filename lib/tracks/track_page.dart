// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';
import 'package:pd_web/tracks/creation/creation_view.dart';
import 'package:pd_web/tracks/tracks/tracks_view.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
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
                            hintText: 'Название трека, год',
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
                        text: 'Все треки',
                      ),
                      const Tab(
                        text: 'Создание',
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
                    const TracksView(),
                    const CreationView(),
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
