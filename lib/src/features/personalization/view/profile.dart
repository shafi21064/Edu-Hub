import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:torganic/src/common/layouts/layout_with_back_button/layout_with_back_button.dart';
import 'package:torganic/src/common/layouts/layout_with_drawer/layout_with_drawer.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/features/authentication/data/repositories/auth_repositories.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../controller/user_controller.dart';
import 'widget/details_card.dart';
import 'widget/details_part.dart';
import 'widget/picture_part.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // final profileController = Get.put(UserController());
   // final authController = Get.put(AuthRepositories());
    return AppLayoutWithBackButton(
        title: Text(AppLocalizations.of(context)!.profile),
        centerTitle: true,
        body:  SingleChildScrollView(
          child: Column(
            children: [
              PicturePart(),
              //const Gap(AppSizes.spaceBtwSections),
               DetailsPart(),

            ],
          ),
        ),);
  }
}



