import 'package:flutter/material.dart';
import 'package:pd_web/theme.dart';

class TSPage extends StatelessWidget {
  const TSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
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
            child: TabBarView(
              children: [
                Placeholder(),
                Container(),
                Placeholder(),
                Placeholder(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
