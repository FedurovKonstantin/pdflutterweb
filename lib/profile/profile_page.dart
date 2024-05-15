import 'package:flutter/material.dart';
import 'package:pd_web/profile/cv_view.dart';
import 'package:pd_web/profile/requests_view.dart';
import 'package:pd_web/profile/responces_view.dart';
import 'package:pd_web/theme.dart';

import 'team_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 2,
      child: Column(
        children: [
          Container(
            color: Colors.grey[50],
            height: 79,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 33,
                left: 66,
              ),
              child: TabBar(
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
                    text: 'Резюме',
                  ),
                  const Tab(
                    text: 'Отклики',
                  ),
                  const Tab(
                    text: 'Моя команда',
                  ),
                  const Tab(
                    text: 'Заявки',
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
                    vertical: 22,
                  ),
                  child: [
                    const CVView(),
                    const ResponcesView(),
                    const TeamView(),
                    const RequestsView(),
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
