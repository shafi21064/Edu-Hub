import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/listview_layout/listview_layout.dart';
import 'package:torganic/src/common/widgets/tab_bar/tabs_card.dart';
import '../../../common/layouts/layout_with_back_button/layout_with_back_button.dart';
import '../../../common/widgets/containers/grid_scroll_card.dart';
import '../../../common/widgets/containers/vertical_scroll_card.dart';
import '../../../common/widgets/search_bar/search_bar.dart';
import '../../../common/widgets/texts/section_title_text.dart';
import '../../../utils/constants/sizes.dart';
import '../../details/view/details.dart';



class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayoutWithBackButton(
      title: const Text('All Courses'),
        centerTitle: true,
        body: ListView(
          children: [
            const AppSearchBar(),
            const Gap(AppSizes.spaceBtwSections),
            SizedBox(
              height: 40,
              child: AppListViewLayout(
                  itemCount: 5,
              isScrollVertically: false,
              child: AppTabsCard(tabName: 'Python')),
            ),
            const Gap(AppSizes.spaceBtwItems),
            const AppSectionTitleText(sectionTitle: 'Trending Course', haveTxtButton: false,),
             AppGridScrollCard(
              itemCount: 4,
               onTap: ()=> Get.to(()=> const DetailsScreen()),
            ),
            const Gap(AppSizes.spaceBtwSections),
            const AppSectionTitleText(sectionTitle: 'Other Course', haveTxtButton: false,),
            AppVerticalScrollCard(
              onTap: ()=> Get.to(()=> const DetailsScreen()),
            )
          ],
        ));
  }
}
