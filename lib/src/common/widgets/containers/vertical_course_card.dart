import 'package:flutter/material.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'card_container.dart';
import 'course_title_container.dart';
import 'product_image.dart';

class AppVerticalCourseCard extends StatelessWidget {
  const AppVerticalCourseCard({super.key});


  @override
  Widget build(BuildContext context) {
    return const AppCardContainer(
      width: AppSizes.productItemHeight,
      child: Column(
        children: [
          AppProductImageContainer(
            // width: 250,
              imgUrl: AppImages.banner2),
          AppCourseTitleContainer()
        ],
      ),

    );
  }
}

