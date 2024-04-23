import 'package:flutter/material.dart';
import 'package:torganic/src/common/layouts/layout_without_appbar/layout_without_appbar.dart';
import 'package:torganic/src/common/widgets/tab_bar/sized_tab_bar.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayoutWithoutAppBar(
        body: TabBarViewInfo(
          tabs: [
            Tab(child: Text('shafi'),),
            Tab(child: Text('shafi2'),)
          ],
          tabsView: [
            Text('data'),
            Text('data'),
          ],
        ));
  }
}

