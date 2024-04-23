
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:torganic/src/common/layouts/gridview_layout/gridview_layout.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/layouts/layout_without_appbar/layout_without_appbar.dart';
import 'package:torganic/src/common/widgets/containers/grid_course_card.dart';
import 'package:torganic/src/common/widgets/containers/horizontal_course_card.dart';
import 'package:torganic/src/common/widgets/texts/section_title_text.dart';
import 'package:torganic/src/features/bottom_navigation/controller/buttom_navigation_controller.dart';
import 'package:torganic/src/features/classes/view/my_classes.dart';
import 'package:torganic/src/features/home/controller/home_controller.dart';
import 'package:torganic/src/features/home/views/widgets/home_recomended_product.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import '../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../common/styles/spacing_style.dart';
import '../../../common/widgets/containers/card_container.dart';
import '../../../common/widgets/containers/course_title_container.dart';
import '../../../common/widgets/containers/product_bottom_container.dart';
import '../../../common/widgets/containers/product_image.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../bottom_navigation/bottom_navigation.dart';
import 'widgets/home_card_part.dart';
import 'widgets/home_header_part.dart';

class HomeScreenThree extends StatelessWidget {
  const HomeScreenThree({super.key});

  @override
  Widget build(BuildContext context) {

    final bottomNav = BottomNavigationController.instance;

    return AppLayoutWithoutAppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: HomeHeaderPart(),
        ),
        body: ListView(
          children:   [
            const Gap(AppSizes.spaceBtwItems),
            const HomeCardPart(),
            const Gap(AppSizes.spaceBtwSections),
            const HomeRecommendedProduct(),
            const Gap(AppSizes.spaceBtwItems),
            AppSectionTitleText(
              onTapSeeAll: (){bottomNav.changePage(1);
              },
                sectionTitle: 'Most Popular Course'),
            const AppHorizontalCourseCard(),
            const Gap(AppSizes.spaceBtwSections),
          ],
        ),
    );
  }
}
