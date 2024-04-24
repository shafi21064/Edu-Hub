import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../layouts/gridview_layout/gridview_layout.dart';
import 'card_container.dart';
import 'course_title_container.dart';
import 'product_image.dart';

class AppGridScrollCard extends StatelessWidget {
  const AppGridScrollCard({this.itemCount = 10, super.key});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return  AppGridViewLayout(
      itemCount: itemCount,
      child: const AppCardContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppProductImageContainer(
              // fit: BoxFit.fill,
                imgUrl: AppImages.banner2),
            //const Gap(AppSizes.spaceBtwRowItem),
            AppCourseTitleContainer()
          ],
        ),
      ),
    );
  }
}

