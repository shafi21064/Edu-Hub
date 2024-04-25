import 'package:flutter/material.dart';
import '../../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../../common/widgets/tab_bar/tabs_card.dart';

class AppCourseScreenTabButton extends StatelessWidget {
  const AppCourseScreenTabButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: AppListViewLayout(
        itemCount: 5,
        isScrollVertically: false,
        builderFunction: (BuildContext context, int index)=> const AppTabsCard(tabName: 'Python'),
      ),
    );
  }
}
