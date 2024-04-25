import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../../common/widgets/containers/card_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class AppCourseDetailsPart extends StatelessWidget {
  const AppCourseDetailsPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppListViewLayout(
        itemCount: 5,
        builderFunction: (context, index)=> AppCardContainer(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 AppCardContainer(
                    padding: const EdgeInsets.all(AppSizes.md),
                    hasBorder: true,
                    borderColor: isDark? AppColors.borderSecondary: AppColors.secondary,
                    borderWidth: 1,
                    child: const Center(child: Icon(CupertinoIcons.play, size: AppSizes.iconLg,),)),
                const Gap(AppSizes.spaceBtwRowItem),
                //AppCourseTitleContainer()
                Flexible(
                  child: AppCardContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Introduction $index', style: Theme.of(context).textTheme.titleLarge,),
                        const Gap(8),
                        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                          style: Theme.of(context).textTheme.bodyLarge,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )) );
  }
}
