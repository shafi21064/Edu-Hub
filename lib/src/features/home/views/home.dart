import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/widgets/images/banner_image.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/styles/spacing_style.dart';
import '../../../common/widgets/search_bar/search_bar.dart';
import '../../../utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (_ , innerBoxIsScrolled){
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: AppSpacingStyle.defaultSpacing,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const AppBannerImage(
                                applyImageRadius: false,
                               // height: 40,
                                  imgUrl: 'assets/images/user/user_pic.png'),
                              const Gap(AppSizes.spaceBtwItems),
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
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}

