import 'package:flutter/material.dart';
import 'package:torganic/src/common/widgets/containers/vertical_course_card.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../layouts/listview_layout/listview_layout.dart';
import 'card_container.dart';
import 'course_title_container.dart';
import 'product_image.dart';

class AppHorizontalScrollCard extends StatelessWidget {
  const AppHorizontalScrollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      child: AppListViewLayout(
          isScrollVertically: false,
          itemCount: 5,
          child: AppVerticalCourseCard()),
    );
  }
}

