import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:torganic/src/common/layouts/gridview_layout/gridview_layout.dart';
import 'package:torganic/src/common/widgets/containers/course_title_container.dart';
import 'package:torganic/src/common/widgets/containers/grid_scroll_card.dart';
import 'package:torganic/src/common/widgets/containers/horizontal_scroll_card.dart';
import 'package:torganic/src/common/widgets/containers/vertical_scroll_card.dart';
import 'package:torganic/src/common/widgets/tab_bar/sized_tab_bar.dart';
import 'package:torganic/src/common/widgets/texts/section_title_text.dart';
import '../../../common/layouts/layout_with_back_button/layout_with_back_button.dart';
import '../../../common/layouts/listview_layout/listview_layout.dart';
import '../../../common/widgets/containers/card_container.dart';
import '../../../common/widgets/containers/product_image.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MyClasses extends StatelessWidget {
  const MyClasses({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode(context);
    return  AppLayoutWithBackButton(
      centerTitle: true,
      title: const Text('My Classes'),
      body: ListView(
        children: const [
          AppSectionTitleText(sectionTitle: 'On Progress', haveTxtButton: false,),
          AppHorizontalScrollCard(),
          Gap(AppSizes.spaceBtwSections),
          AppSectionTitleText(sectionTitle: 'Other Classes', haveTxtButton: false,),
          AppVerticalScrollCard(),
          Gap(AppSizes.spaceBtwItems),
        ],
      )
    );
  }
}
