import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/features/authentication/views/log_in/view/login.dart';
import 'package:torganic/src/features/personalization/view/personal_info.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'details_card.dart';


class DetailsPart extends StatelessWidget {
  const DetailsPart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return Container(
      padding: AppSpacingStyle.allSIdeSpacing,
        //color: isDark ? AppColors.dark : AppColors.white,
      child: Column(
        children: [
          DetailsCard(
              onTap: (){
                Get.to(()=> const AppPersonalInfoScreen());
              },
              imagePath: AppImages.homeIcon,
              cardText: 'Personal Info',
          ),
          //const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.profileIcon,
            cardText: 'Your Cards',
          ),
          //const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.addressIcon,
            cardText: 'Billing & Subscription',
          ),
          //const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.translateIcon,
            cardText: 'Account & Security',
          ),
          //const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){},
            imagePath: AppImages.translateIcon,
            cardText: 'Help & Support ',
          ),
          //const Gap(AppSizes.spaceBtwItems),
          DetailsCard(
            onTap: (){
              Get.offAll(()=> const LogIn());
            },
            imagePath: AppImages.exitIcon,
            cardText: AppLocalizations.of(context)!.logout,
            showBackArrow: false,
          )
        ],
      ),
    );
  }
}