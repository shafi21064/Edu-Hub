import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import '../../../../../common/layouts/layout_without_appbar/layout_without_appbar.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../sign_up/view/signup.dart';
import '../../widgets/header_logo_part.dart';
import '../../widgets/other_login_option.dart';
import '../controllers/login_controller.dart';
import 'widgets/login_forms&button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final logInController = Get.put(LogInPageController());
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AppLayoutWithoutAppBar(
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            const HeaderLogoPart(),
            const Gap(AppSizes.spaceBtwSections),
            const LogInFormsAndButton(),
            const Gap(AppSizes.spaceBtwSections),
            OtherLogInOrSignUpOption(
              title: AppLocalizations.of(context)!.orLogInWith,
              googleTap: () {
                logInController.onPressedGoogleLogin();
              },
              facebookTap: () {},
            ),
            const Gap(AppSizes.spaceBtwSections),
            Center(
                child: InkWell(
                    onTap: () {
                      Get.to(const SignUp());
                    },
                    child: Text(
                      AppLocalizations.of(context)!.dontHaveAccount,
                      style: Theme.of(context).textTheme.titleMedium,
                    )))
          ],
        ),
      ),
    );
  }
}
