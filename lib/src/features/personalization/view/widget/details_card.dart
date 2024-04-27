import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/widgets/containers/card_container.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/device/device_utility.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class DetailsCard extends StatelessWidget {
  final String cardText, imagePath;
  final Color? cardColor;
  final VoidCallback onTap;
  final bool showBackArrow;

  const DetailsCard(
      {super.key,
      required this.imagePath,
      required this.cardText,
      required this.onTap,
      this.showBackArrow = true,
      this.cardColor});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onTap,
      child: AppCardContainer(
        height: 50,
        //width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
                child: Image.asset(imagePath)),
            const Gap(AppSizes.spaceBtwItems),
            AppCardContainer(
              //250width: AppHelperFunctions.screenWidth() * 0.6,
              width: AppHelperFunctions.screenWidth() * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardText,
                      style: Theme.of(context).textTheme.headlineSmall),
                  showBackArrow
                      ? const SizedBox( width: 25, child: Icon(Icons.arrow_forward_ios))
                      : const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
