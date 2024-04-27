import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/layouts/layout_with_back_button/layout_with_back_button.dart';
import 'package:torganic/src/common/widgets/containers/banner_image.dart';
import 'package:torganic/src/common/widgets/containers/card_container.dart';
import 'package:torganic/src/features/authentication/views/widgets/auth_input_field.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';


class AppPersonalInfoScreen extends StatelessWidget {
  const AppPersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController fullNameController = TextEditingController();

    return AppLayoutWithBackButton(
      title: const Text('Personal Info'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    AppBannerImage(
                        width: 100,
                        boarderRadius: 100,
                        imgUrl: 'assets/images/user/user.png'),
                    Positioned(
                      right: 0,
                        bottom: 5,
                        child: Icon(Icons.edit_calendar))
                  ],
                ),
              ),
              Gap(AppSizes.spaceBtwSections),
              Text('Full Name'),
              Gap(AppSizes.spaceBtwInputFields),
              AuthInputField(
                  isDark: true,
                  hingText: 'Full Name',
                  controller: fullNameController,
              ),
              Gap(AppSizes.spaceBtwItems),
              Text('User Name'),
              Gap(AppSizes.spaceBtwInputFields),
              AuthInputField(
                isDark: true,
                hingText: 'user@123',
                controller: fullNameController,
              ),
              Gap(AppSizes.spaceBtwItems),
              Text('Email'),
              Gap(AppSizes.spaceBtwInputFields),
              AuthInputField(
                isDark: true,
                hingText: 'example@email.com',
                prefixIcon: Icon(Icons.email),
                controller: fullNameController,
              ),
              Gap(AppSizes.spaceBtwItems),
              Text('Phone Number'),
              Gap(AppSizes.spaceBtwInputFields),
              AuthInputField(
                isDark: true,
                hingText: '015*******',
                controller: fullNameController,
              ),
              Text('Date of Birth'),
              Gap(AppSizes.spaceBtwInputFields),
              AuthInputField(
                isDark: true,
                hingText: '28-10-23',
                suffixIcon: Icon(Icons.calendar_month),
                controller: fullNameController,
              )
            ],
          ),
        ));
  }
}

