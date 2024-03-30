import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

class AppLoaders {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.overlayContext!).hideCurrentSnackBar();

  static customToast(String message) {
    ScaffoldMessenger.of(Get.overlayContext!).showSnackBar(SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppHelperFunctions.isDarkMode(Get.overlayContext!)
                  ? AppColors.darkGrey.withOpacity(0.9)
                  : AppColors.grey.withOpacity(0.9)),
          child: Center(
            child: Text(
              message,
              style: Theme.of(Get.overlayContext!).textTheme.labelLarge,
            ),
          ),
        )));
  }

  static successSnackBar({required title, message = '', duration = 3}) {
    AppHelperFunctions.getSnackBar(
        title: title,
        message: message,
        duration: duration,
        backgroundColor: AppColors.primary,
        icon: Icons.check);
  }

  static warningSnackBar({required title, message = '', duration = 3}) {
    AppHelperFunctions.getSnackBar(
        title: title,
        message: message,
        duration: duration,
        backgroundColor: AppColors.warning,
        icon: Icons.warning);
  }

  static errorSnackBar({required title, message = '', duration = 3}) {
    AppHelperFunctions.getSnackBar(
        title: title,
        message: message,
        duration: duration,
        backgroundColor: AppColors.error,
        icon: Icons.warning);
  }
}
