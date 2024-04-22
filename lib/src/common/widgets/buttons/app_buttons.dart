import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';

import '../../../utils/constants/image_strings.dart';

class AppButtons {
  static ElevatedButton smallRoundButton(
      {required VoidCallback onPressed,
      required Color buttonColor,
      required Widget buttonChild, maximumSize = 10.0}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: buttonColor, ),
        child: buttonChild);
  }

  static ElevatedButton largeFlatFilledButton(
      {required VoidCallback onPressed,
      required String buttonText}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const BeveledRectangleBorder(),
            minimumSize:
                Size(AppHelperFunctions.screenWidth(), AppSizes.buttonHeight)),
        child: Text(
          buttonText,
        ));
  }

  static OutlinedButton largeFlatOutlineButton(
      {required VoidCallback onPressed,
      required String buttonText}) {
    return OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const BeveledRectangleBorder(),
            minimumSize:
                Size(AppHelperFunctions.screenWidth(), AppSizes.buttonHeight)),
        child: Text(
          buttonText,
        ));
  }

  static Container smallIconButton(
      {required VoidCallback onIconPress, required String iconPath}) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onIconPress,
        icon: Image(
          width: AppSizes.iconMd,
          height: AppSizes.iconMd,
          image: AssetImage(iconPath),
        ),
      ),
    );
  }
}
