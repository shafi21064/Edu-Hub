import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../widgets/containers/product_image.dart';

class AppListViewLayout extends StatelessWidget {
  const AppListViewLayout(
      {required this.itemCount,
      required this.imgUrl,
      this.isScrollVertically = true,
      super.key});

  final int itemCount;
  final String imgUrl;
  final bool isScrollVertically;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: isScrollVertically ? Axis.vertical : Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding:  isScrollVertically ? const EdgeInsets.only(bottom: AppSizes.spaceBtwItems) : const EdgeInsets.only(right: AppSizes.spaceBtwItems),
            child: AppProductImage(imgUrl: imgUrl, fit: BoxFit.scaleDown,),
          );
        });
  }
}
