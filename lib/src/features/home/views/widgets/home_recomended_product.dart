import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import '../../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../../common/widgets/containers/card_container.dart';
import '../../../../common/widgets/containers/product_bottom_container.dart';
import '../../../../common/widgets/containers/product_image.dart';
import '../../../../common/widgets/texts/section_title_text.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class HomeRecommendedProduct extends StatelessWidget {
  const HomeRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppSectionTitleText(
          haveTxtButton: false,
            sectionTitle: 'Recommended For You'),
        const Gap(AppSizes.spaceBtwItems),
        Container(
          height: 265,
          decoration: const BoxDecoration(),
          child: AppListViewLayout(
            isScrollVertically: false,
            itemCount: 5,
            child: AppCardContainer(
              width: AppHelperFunctions.screenWidth() / 2,
              child: const Column(
                children: [
                  AppProductImageContainer(imgUrl: AppImages.banner2, fit: BoxFit.scaleDown,),
                  AppProductBottomContainer()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

