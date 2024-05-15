import 'package:flutter/material.dart';
import 'package:pd_web/profile/cv_view.dart';
import 'package:pd_web/profile/responces_view.dart';
import 'package:pd_web/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Column(
        children: [
          Container(
            color: Colors.grey[50],
            height: 79,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(
                top: 33,
                left: 66,
              ),
              child: TabBar(
                labelColor: PDTheme.primary,
                unselectedLabelColor: Color(0xffADB5BD),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorColor: PDTheme.primary,
                tabs: [
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 65,
                vertical: 22,
              ),
              child: TabBarView(
                children: [
                  CVView(),
                  ResponcesView(),
                  Placeholder(),
                  Placeholder(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
