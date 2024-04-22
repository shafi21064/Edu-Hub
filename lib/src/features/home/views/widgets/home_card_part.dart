import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widgets/containers/card_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class HomeCardPart extends StatelessWidget {
  const HomeCardPart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppCardContainer(
        padding: AppSpacingStyle.allSIdeSpacing,
        backgroundColor: AppColors.primary,
        borderColor: isDark ? AppColors.dark : AppColors.light,
        borderWidth: 0,
        gradient: LinearGradient(
            colors: [AppColors.primary, AppColors.primary.withOpacity(.8)]),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_rounded,
                      color: AppColors.light,
                    ),
                    const Gap(AppSizes.spaceBtwRowItem),
                    Text(DateFormat.yMMMd().format(DateTime.now()),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: AppColors.light))
                  ],
                ),
                const Gap(AppSizes.spaceBtwItems),
                Text(
                  'Current Level',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: AppColors.light),
                ),
                const Gap(AppSizes.spaceBtwRowItem),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Intermediate',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: AppColors.light),
                    ),
                    Text(
                      '500/1000',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.light),
                    )
                  ],
                ),
                const Gap(AppSizes.spaceBtwRowItem),
                LinearPercentIndicator(
                    lineHeight: AppSizes.sm,
                    padding: const EdgeInsets.all(0),
                    percent: 0.5,
                    animation: true,
                    backgroundColor: AppColors.grey.withOpacity(.5),
                    progressColor: AppColors.white,
                    animationDuration: 5,
                    barRadius: const Radius.circular(AppSizes.md)),
              ],
            ),
            Positioned(
                right: 0,
                child: AppCardContainer(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  backgroundColor: isDark ? AppColors.dark : AppColors.light,
                  borderColor: isDark ? AppColors.dark : AppColors.light,
                  borderWidth: 0,
                  child: Text(
                    'FREEMIUM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: AppColors.primary),
                  ),
                ))
          ],
        ));
  }
}
