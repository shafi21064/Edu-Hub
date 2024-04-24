import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../common/layouts/layout_with_back_button/layout_with_back_button.dart';
import '../../../common/widgets/containers/grid_scroll_card.dart';
import '../../../common/widgets/containers/vertical_scroll_card.dart';
import '../../../common/widgets/search_bar/search_bar.dart';
import '../../../common/widgets/texts/section_title_text.dart';
import '../../../utils/constants/sizes.dart';



class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayoutWithBackButton(
      title: const Text('All Courses'),
        centerTitle: true,
        body: ListView(
          children: const [
            AppSearchBar(),
            Gap(AppSizes.spaceBtwSections),
            AppSectionTitleText(sectionTitle: 'Trending Course', haveTxtButton: false,),
            AppGridScrollCard(
              itemCount: 4,
            ),
            Gap(AppSizes.spaceBtwSections),
            AppSectionTitleText(sectionTitle: 'Other Course', haveTxtButton: false,),
            AppVerticalScrollCard()
          ],
        ));
  }
}
