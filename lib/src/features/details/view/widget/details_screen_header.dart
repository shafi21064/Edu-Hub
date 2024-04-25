import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../utils/constants/sizes.dart';

class AppDetailsScreenHeaderPart extends StatelessWidget {
  const AppDetailsScreenHeaderPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Python Programming (Data Analyst)', style: Theme.of(context).textTheme.headlineSmall,),
        Text('Created by Josua', style: Theme.of(context).textTheme.bodySmall,),
        const Gap(AppSizes.spaceBtwItems),
        const Row(
          children: [
            Icon(Icons.star, color: Colors.yellow,),
            Text('5.0'),
            Gap(AppSizes.spaceBtwItems),
            Icon(Icons.account_circle_rounded, color: Colors.blue, size: AppSizes.iconSm,),
            Gap(AppSizes.spaceBtwRowItem),
            Text('1000'),
          ],
        ),
        const Gap(AppSizes.spaceBtwItems),
        Text('This course is set for a student that already understand about basic python programming, understand about various type of data in programming and able to make a small project with python programming language.', style:  Theme.of(context).textTheme.bodySmall,),
        const Gap(AppSizes.spaceBtwSections),
      ],
    );
  }
}
