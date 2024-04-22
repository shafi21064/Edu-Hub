
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import '../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../common/styles/spacing_style.dart';
import '../../../common/widgets/containers/card_container.dart';
import '../../../common/widgets/containers/product_bottom_container.dart';
import '../../../common/widgets/containers/product_image.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'widgets/home_card_part.dart';
import 'widgets/home_header_part.dart';

class HomeScreenThree extends StatelessWidget {
  const HomeScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacingStyle.defaultSpacing,
        child: ListView(
          children: [
            const HomeHeaderPart(),
            const Gap(AppSizes.spaceBtwSections),
            const HomeCardPart(),
            const Gap(AppSizes.spaceBtwSections),
            Text(
              'Recommended For You',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Gap(AppSizes.spaceBtwItems),
             SizedBox(
              height: 400,
              child: AppListViewLayout(
                  isScrollVertically: false,
                  itemCount: 5,
                  child: AppCardContainer(
                  width: AppHelperFunctions.screenWidth() / 2,
                  child: Column(
                    children: [
                      AppProductImageContainer(imgUrl: AppImages.banner2, fit: BoxFit.scaleDown,),
                      const AppProductBottomContainer()
                    ],
                  ),
                ),
                 ),
            )
          ],
        ),
      ),
    );
  }
}
