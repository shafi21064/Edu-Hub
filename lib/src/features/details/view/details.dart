import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/common/widgets/buttons/app_buttons.dart';
import 'package:torganic/src/common/widgets/containers/banner_image.dart';
import 'package:torganic/src/utils/constants/colors.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                  iconTheme: const IconThemeData(
                    color: Colors.white,
                  ),
                  stretch: false,
                  expandedHeight: 200.0,
                  floating: true,
                  pinned: true,
                  actions: [
                    PopupMenuButton(
                        icon: const Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        itemBuilder: (context) => [
                              const PopupMenuItem(
                                value: 1,
                                child: Text('New Group'),
                              ),
                              const PopupMenuItem(
                                value: 2,
                                child: Text('Settings'),
                              ),
                              const PopupMenuItem(
                                value: 3,
                                child: Text('Logout'),
                              )
                            ]),
                  ],
                  flexibleSpace: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const AppBannerImage(
                          isNetworkImage: true,
                          applyImageRadius: false,
                          fit: BoxFit.fill,
                          imageOpacity: .5,
                          imgUrl:
                              'https://s3-alpha-sig.figma.com/img/1b0c/9a07/ddb454bc40f94c01a6abd69e22b8a2ff?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Po8iwXWymhxTXeYmdMVFjnGQZ06o2B0ijGzMJl-me4Ad-AnaMTSQZSv-rElKRNbknqzMB-HnN-NikGcZ9qdffPnUyqkuXxT9-JvD8te28Qj1tyxgwZmzIKe9Bxe3t1CCY~XLq0zJ2v-M0aJuE-RD28mLKN4gw4K96tyGhE2gB5mzoMN-itmZvHCa3Wj0lx0-EzL55qoYQuE43Jb4fB006VwNA6C-g6DGkSBvFBBqhK1IMrlhAehzEFZf4BMKgWC1eH8MUZHAOpPCerurUd4owzgEJehba1tQr1qUv2m94VLXqpHAtljqjdyI6nfEQih0BSnOetD-~K0lwXvfgIVQ-A__',
                        ),
                      ),
                      const Center(
                        child: Icon(
                          CupertinoIcons.play_circle,
                          size: 50,
                          color: AppColors.white,
                        ),
                      )
                    ],
                  )),
              const SliverFillRemaining(
                child: CustomWidget(),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
              child: AppButtons.largeFlatFilledButton(onPressed: (){}, buttonText: 'Unlock Premium')),
        ],
      ),
    );
  }
}

// Your custom widget
class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all( AppSizes.defaultSpace),
        child: ListView(
          padding: AppSpacingStyle.zeroSpacing,
          children: [
            Text('Python Programming (Data Analyst)', style: Theme.of(context).textTheme.headlineSmall,),
            Text('Created by Josua', style: Theme.of(context).textTheme.bodySmall,),

          ],
        ));
  }
}
