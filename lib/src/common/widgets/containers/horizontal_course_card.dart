import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../layouts/listview_layout/listview_layout.dart';
import 'card_container.dart';
import 'course_title_container.dart';
import 'product_image.dart';

class AppHorizontalCourseCard extends StatelessWidget {
  const AppHorizontalCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: AppListViewLayout(
          isScrollVertically: false,
          itemCount: 5,
          child: AppCardContainer(
            width: AppSizes.productItemHeight,
            child: Column(
              children: [
                AppProductImageContainer(
                  // width: 250,
                    imgUrl: AppImages.banner2),
                AppCourseTitleContainer()
              ],
            ),

          )),
    );
  }
}

