import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/layouts/layout_with_back_button/layout_with_back_button.dart';
import 'package:torganic/src/common/layouts/listview_layout/listview_layout.dart';
import 'package:torganic/src/common/widgets/containers/vertical_scroll_card.dart';
import 'package:torganic/src/common/widgets/search_bar/search_bar.dart';
import 'package:torganic/src/common/widgets/texts/section_title_text.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

import 'widgets/course_screen_tab_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return AppLayoutWithBackButton(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSearchBar(
                enabled: true,
                  onTap: (){}),
      const Gap(AppSizes.spaceBtwSections),
      const AppCourseScreenTabButton(),
      const Gap(AppSizes.spaceBtwSections),
      const AppSectionTitleText(
        haveTxtButton: false,
        sectionTitle: 'Related Search to "Python"',
      ),
      Expanded(
        child: ListView(
          shrinkWrap: true,
          children: [
            AppListViewLayout(
                itemCount: 10,
                builderFunction: (context, index) =>
                    AppVerticalScrollCard(onTap: () {})),
          ],
        ),
      )
    ]));
  }
}
