import 'package:flutter/material.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../containers/card_container.dart';

class AppTabsCard extends StatelessWidget {
  const AppTabsCard({required this.tabName, super.key});

  final String tabName;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return AppCardContainer(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        hasBorder: true,
        borderColor: isDark ? AppColors.light : AppColors.dark,
        borderWidth: 1,
        child: Text(tabName));
  }
}
