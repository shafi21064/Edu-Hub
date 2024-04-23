import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

class AppSectionTitleText extends StatelessWidget {
  const AppSectionTitleText(
      {required this.sectionTitle,
      this.haveTxtButton = true,
      this.onTapSeeAll,
      super.key});

  final String sectionTitle;
  final bool haveTxtButton;
  final VoidCallback? onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sectionTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Visibility(
              visible: haveTxtButton,
              child: InkWell(
                  onTap: onTapSeeAll,
                  child: Text('see all',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .apply(color: AppColors.primary))),
            )
          ],
        ),
        const Gap(AppSizes.spaceBtwItems)
      ],
    );
  }
}
