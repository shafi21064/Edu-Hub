import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../common/widgets/containers/banner_image.dart';
import '../../../../utils/constants/sizes.dart';


class HomeHeaderPart extends StatelessWidget {
  const HomeHeaderPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const AppBannerImage(
                applyImageRadius: false,
                // height: 40,
                imgUrl: 'assets/images/user/user_pic.png'),
            const Gap(AppSizes.spaceBtwRowItem),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.hello, style: Theme.of(context).textTheme.bodySmall),
                Text('Name', style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))
      ],
    );
  }
}