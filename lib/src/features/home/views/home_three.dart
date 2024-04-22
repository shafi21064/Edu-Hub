import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/layouts/layout_without_appbar/layout_without_appbar.dart';
import 'package:torganic/src/common/layouts/listview_layout/listview_layout.dart';
import 'package:torganic/src/common/widgets/containers/card_container.dart';
import 'package:torganic/src/common/widgets/containers/product_image.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import 'package:torganic/src/utils/http/http_client.dart';
import '../../../common/styles/spacing_style.dart';
import '../../../common/widgets/tab_bar/custom_tab_bar.dart';
import '../../../utils/constants/sizes.dart';
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
            const SizedBox(
              height: 400,
              child: AppListViewLayout(
                  isScrollVertically: false,
                  itemCount: 5,
                  imgUrl: AppImages.banner1),
            )
          ],
        ),
      ),
    );
  }
}
