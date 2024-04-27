import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/widgets/containers/banner_image.dart';
import 'package:torganic/src/common/widgets/containers/card_container.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controller/user_controller.dart';


class PicturePart extends StatelessWidget {
  const PicturePart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
   // final controller = UserController.instance;
    return Column(
      children: [
        AppCardContainer(
            padding: AppSpacingStyle.allSIdeSpacing,
            borderWidth: 0,
            gradient: LinearGradient(
                colors: [AppColors.secondary, AppColors.secondary.withOpacity(.8)]),
            child: Row(
              children: [
                const Icon(Icons.kayaking, color: AppColors.white,size: 50,),
                const Gap(AppSizes.spaceBtwItems),
                AppCardContainer(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Freemium Plan', style: Theme.of(context).textTheme.headlineMedium!.apply(color: AppColors.white),),
                    Text('Upgrade to unlock all the feature', style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),)
                  ],
                ))
              ],
            )),
       const Gap(AppSizes.spaceBtwSections),

        AppCardContainer(
            borderWidth: 0,
            //backgroundColor: isDark? AppColors.dark : AppColors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBannerImage(
                    width: 70,
                    boarderRadius: 100,
                    imgUrl: 'assets/images/user/user.png'),
                const Gap(AppSizes.spaceBtwItems),
                AppCardContainer(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ahmad Fauzan', style: Theme.of(context).textTheme.headlineMedium),
                    Text('afauzan.azhim@codu.com', style: Theme.of(context).textTheme.bodyMedium)
                  ],
                ))
              ],
            )),

        const Gap(AppSizes.spaceBtwItems),

        const Divider(thickness: 1,),

      ],
    );
  }
}
