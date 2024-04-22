// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:torganic/src/common/layouts/listview_layout/listview_layout.dart';
// import 'package:torganic/src/common/widgets/containers/card_container.dart';
// import 'package:torganic/src/common/widgets/containers/product_image.dart';
// import 'package:torganic/src/utils/constants/colors.dart';
// import 'package:torganic/src/utils/constants/image_strings.dart';
// import 'package:torganic/src/utils/device/device_utility.dart';
// import 'package:torganic/src/utils/helpers/helper_functions.dart';
// import '../../../common/styles/spacing_style.dart';
// import '../../../common/widgets/tab_bar/custom_tab_bar.dart';
// import '../../../utils/constants/sizes.dart';
// import 'widgets/home_card_part.dart';
// import 'widgets/home_header_part.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 6,
//       child: Scaffold(
//         body: NestedScrollView(
//             floatHeaderSlivers: true,
//             headerSliverBuilder: (_, innerBoxIsScrolled) {
//               return [
//                 SliverAppBar(
//                     pinned: true,
//                     floating: true,
//                     expandedHeight: AppHelperFunctions.screenHeight() * 1,
//                     automaticallyImplyLeading: false,
//                     flexibleSpace: Padding(
//                       padding: AppSpacingStyle.defaultSpacing,
//                       child: Column(
//                         children:  [
//                           const HomeHeaderPart(),
//                           const Gap(AppSizes.spaceBtwSections),
//                           const HomeCardPart(),
//                           const Gap(AppSizes.spaceBtwSections),
//                           Text('Recommended For You', style: Theme.of(context).textTheme.titleLarge,),
//                           const Gap(AppSizes.spaceBtwItems),
//                           AppListViewLayout(
//                             scrollVertically: false,
//                               itemCount: 2,
//                               imgUrl: AppImages.productImage5)
//                         ],
//                       ),
//                     ),
//                     // bottom:  const AppTabBar(
//                     //     tabs: [
//                     //   Tab(
//                     //     child: AppCardContainer(
//                     //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     //       borderColor: AppColors.dark,
//                     //       borderWidth: 1,
//                     //       child: Text('sports'),)
//                     //   ),
//                     //   Tab(
//                     //       child: AppCardContainer(
//                     //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     //         borderColor: AppColors.dark,
//                     //         borderWidth: 1,
//                     //         child: Text('sports'),)
//                     //   ),
//                     //   Tab(
//                     //       child: AppCardContainer(
//                     //         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     //         borderColor: AppColors.dark,
//                     //         borderWidth: 1,
//                     //         child: Text('sports'),)
//                     //   ),
//                     //       Tab(
//                     //           child: AppCardContainer(
//                     //             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     //             borderColor: AppColors.dark,
//                     //             borderWidth: 1,
//                     //             child: Text('sports'),)
//                     //       ),
//                     //       Tab(
//                     //           child: AppCardContainer(
//                     //             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     //             borderColor: AppColors.dark,
//                     //             borderWidth: 1,
//                     //             child: Text('sports'),)
//                     //       ),
//                     //       Tab(
//                     //           child: AppCardContainer(
//                     //             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                     //             borderColor: AppColors.dark,
//                     //             borderWidth: 1,
//                     //             child: Text('sports'),)
//                     //       ),
//                     // ])
//                 )
//               ];
//             },
//             body: Container()),
//       ),
//     );
//   }
// }
