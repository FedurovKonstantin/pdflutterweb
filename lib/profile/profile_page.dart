import 'package:flutter/material.dart';
import 'package:pd_web/profile/cv/cv_view.dart';
import 'package:pd_web/profile/responces/responces_view.dart';
import 'package:pd_web/theme.dart';

import 'requests/requests_view.dart';
import 'team/team_view.dart';

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
      initialIndex: 3,
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
                tabs: const [
                  Tab(
                    text: 'Резюме',
                  ),
                  Tab(
                    text: 'Отклики',
                  ),
                  Tab(
                    text: 'Моя команда',
                  ),
                  Tab(
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
                    vertical: 20,
                  ),
                  child: [
                    const CVView(
                      canEdit: true,
                    ),
                    const ResponcesView(),
                    const TeamView(
                      canEdit: true,
                    ),
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
