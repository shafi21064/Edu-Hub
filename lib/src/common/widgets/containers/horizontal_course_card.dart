import 'package:flutter/material.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'card_container.dart';
import 'course_title_container.dart';
import 'product_image.dart';

class AppHorizontalCourseCard extends StatelessWidget {
  const AppHorizontalCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCardContainer(
      //backgroundColor: Colors.red,
      child: Row(
        children: [
          AppProductImageContainer(
             width: 119,
            height: 119,
              fit: BoxFit.fill,
              imgUrl: AppImages.banner2),
          AppCourseTitleContainer()
        ],
      ),
    );
  }
}

