import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:torganic/src/common/layouts/layout_with_back_button/layout_with_back_button.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/common/widgets/buttons/app_buttons.dart';
import 'package:torganic/src/common/widgets/containers/card_container.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class AppQuizScreen extends StatelessWidget {
  const AppQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppLayoutWithBackButton(
      defaultPadding: false,
        customPadding: EdgeInsets.zero,
        title: const Text('Quiz'),
        centerTitle: true,
        body: Stack(
          children: [
            ListView(
              padding: AppSpacingStyle.defaultSpacing,
              children: [
                AppCardContainer(
                  width: AppHelperFunctions.screenWidth() * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppHelperFunctions.screenWidth() * .7,
                        child: LinearPercentIndicator(
                            lineHeight: AppSizes.sm,
                            padding: const EdgeInsets.all(0),
                            percent: 0.5,
                            animation: true,
                            backgroundColor: isDark
                                ? AppColors.primary.withOpacity(.3)
                                : AppColors.secondary.withOpacity(.3),
                            progressColor:
                                isDark ? AppColors.primary : AppColors.secondary,
                            animationDuration: 5,
                            barRadius: const Radius.circular(AppSizes.md)),
                      ),
                      SizedBox(
                          width: AppHelperFunctions.screenWidth() * .1,
                          child: const Text('1/3'))
                    ],
                  ),
                ),
                const Gap(AppSizes.spaceBtwSections),
                Text(
                  'Which of the following libraries in Python is commonly used for data manipulation and analysis in the field of data analytics?',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Gap(AppSizes.spaceBtwRowItem),
                Text(
                  'First Quiz, Don’t worry you should know what it is',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Gap(AppSizes.spaceBtwSections),

                AppCardContainer(
                    hasBorder: true,
                    borderWidth: 1,
                    borderColor: AppColors.secondary,
                    child: Row(
                      children: [
                        //RadioMenuButton(value: 1, groupValue: 1, onChanged: (val){}, child: child),
                        Radio(value: false, groupValue: 1, onChanged: (onChanged){}),
                        const Text('Question')
                      ],)),

                const Gap(AppSizes.spaceBtwItems),
                AppCardContainer(
                    hasBorder: true,
                    borderWidth: 1,
                    borderColor: AppColors.secondary,
                    child: Row(
                      children: [
                        //RadioMenuButton(value: 1, groupValue: 1, onChanged: (val){}, child: child),
                        Radio(value: false, groupValue: 1, onChanged: (onChanged){}),
                        const Text('Question')
                      ],)),

                const Gap(AppSizes.spaceBtwItems),
                AppCardContainer(
                    hasBorder: true,
                    borderWidth: 1,
                    borderColor: AppColors.secondary,
                    child: Row(
                      children: [
                        //RadioMenuButton(value: 1, groupValue: 1, onChanged: (val){}, child: child),
                        Radio(value: false, groupValue: 1, onChanged: (onChanged){}),
                        const Text('Question')
                      ],)),

                const Gap(AppSizes.spaceBtwItems),
                AppCardContainer(
                    hasBorder: true,
                    borderWidth: 1,
                    borderColor: AppColors.secondary,
                    child: Row(
                      children: [
                        //RadioMenuButton(value: 1, groupValue: 1, onChanged: (val){}, child: child),
                        Radio(value: false, groupValue: 1, onChanged: (onChanged){}),
                        const Text('Question')
                      ],)),
              ],
            ),
            Positioned(
              bottom: 0,
                child: AppButtons.largeFlatFilledButton(onPressed: (){}, buttonText: 'Next'))
          ],
        ));
  }
}
