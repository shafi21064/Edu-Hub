import 'package:flutter/material.dart';
import '../../../common/layouts/layout_without_appbar/layout_without_appbar.dart';
import '../../../common/widgets/tab_bar/sized_tab_bar.dart';
import '../../../common/widgets/tab_bar/tabs_card.dart';


class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppLayoutWithoutAppBar(
        body: TabBarViewInfo(
      tabs: [
        Tab(child: AppTabsCard(tabName: 'Shafi1')),
        Tab(child: AppTabsCard(tabName: 'Shafi2')),
      ],
      tabsView: [
        Text('data'),
        Text('data'),
      ],
    ));
  }
}
