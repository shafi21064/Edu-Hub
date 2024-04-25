import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/containers/banner_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'details_screen_popup.dart';

class AppDetailsScreenAppBar extends StatelessWidget {
  const AppDetailsScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        stretch: false,
        expandedHeight: 200.0,
        floating: true,
        pinned: true,
        actions: const [
          AppDetailsScreenPopUpMenu(),
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
                size: AppSizes.iconXLg,
                color: AppColors.white,
              ),
            )
          ],
        ));
  }
}
