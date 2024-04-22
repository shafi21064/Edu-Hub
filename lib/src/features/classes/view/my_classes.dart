import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/layouts/gridview_layout/gridview_layout.dart';
import 'package:torganic/src/common/widgets/containers/course_title_container.dart';
import '../../../common/layouts/layout_with_back_button/layout_with_back_button.dart';
import '../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../common/widgets/containers/card_container.dart';
import '../../../common/widgets/containers/product_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyClasses extends StatelessWidget {
  const MyClasses({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppLayoutWithBackButton(
      centerTitle: true,
      title: const Text('My Classes'),
      body: AppGridViewLayout(
        //isScrollVertically: false,
        itemCount: 10,
        child: AppCardContainer(
         //width: 200,
          backgroundColor: isDark? AppColors.dark : AppColors.light,
          child: const Column(
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
      ),
    );
  }
}
