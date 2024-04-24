import 'package:flutter/material.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../containers/card_container.dart';

class AppTabsCard extends StatelessWidget {
  const AppTabsCard({required this.tabName, this.onTap, super.key});

  final String tabName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppCardContainer(
      onTap: onTap,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        hasBorder: true,
        borderColor: isDark ? AppColors.light : AppColors.dark,
        borderWidth: 1,
        child: Text(tabName, style:  Theme.of(context).textTheme.titleLarge,));
  }
}
