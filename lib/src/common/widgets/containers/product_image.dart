import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/widgets/containers/card_container.dart';
import 'package:torganic/src/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/spacing_style.dart';

class AppProductImage extends StatelessWidget {
  const AppProductImage({
    this.height,
    this.width,
    this.border,
    this.onPress,
    required this.imgUrl,
    this.fit = BoxFit.contain,
    this.boarderRadius = AppSizes.md,
    this.isNetworkImage = false,
    this.applyImageRadius = true,
    this.backgroundColor = AppColors.light,
    super.key,
  });

  final double? height, width;
  final String imgUrl;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage, applyImageRadius;
  final double boarderRadius;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Container(
            height: height,
            width: AppHelperFunctions.screenWidth() / 2,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(boarderRadius)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.all(AppSizes.sm),
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                        ),
                        child: const Icon(
                          CupertinoIcons.bookmark,
                          size: 18,
                        ),
                      ),
                    ),
                    Center(
                      child: ClipRRect(
                          borderRadius: applyImageRadius
                              ? BorderRadius.circular(boarderRadius)
                              : BorderRadius.zero,
                          child: Image(
                        image: isNetworkImage
                            ? NetworkImage(imgUrl)
                            : AssetImage(imgUrl) as ImageProvider,
                        fit: fit,
                      )),
                    ),
                  ],
                ),

                AppCardContainer(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  backgroundColor: AppColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppCardContainer(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            backgroundColor: AppColors.darkerGrey,
                              child: Text('Web Development',
                                  style:
                                      Theme.of(context).textTheme.labelSmall!.apply(color: AppColors.light)),
                          ),
                           const Gap(AppSizes.spaceBtwItems),
                          SizedBox(
                            child: Row(
                              children: [
                                Text('4.9', style: Theme.of(context).textTheme.labelSmall,),
                                const Icon(CupertinoIcons.star_fill, color: Colors.yellow, size: 10,),
                                Text('500', style: Theme.of(context).textTheme.bodySmall)
                              ],
                            ),
                          )
                        ],
                      ),
                      const Gap(AppSizes.spaceBtwItems),
                      Text('The Ultimate Guide to Learning Full Stack', style: Theme.of(context).textTheme.titleMedium,),
                      const Gap(AppSizes.spaceBtwItems),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage('assets/images/user/user_pic.png')),
                                  )
                                ),
                                const Gap(AppSizes.spaceBtwRowItem),
                                Text('John Doe', style: Theme.of(context).textTheme.labelLarge,),

                              ],
                            ),
                          ),
                          RichText(text: TextSpan(
                            text: '\$500',
                            style: Theme.of(context).textTheme.labelSmall!.apply(decoration: TextDecoration.lineThrough),
                            children: [
                              TextSpan(
                                text: ' \$100',
                                style: Theme.of(context).textTheme.bodyLarge
                              )
                            ]
                          ))
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
