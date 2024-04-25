import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import '../../../../common/widgets/texts/section_title_text.dart';
import '../../../../utils/constants/sizes.dart';
import 'details_screen_course_details.dart';
import 'details_screen_header.dart';

class AppDetailsScreenBody extends StatelessWidget {
  const AppDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all( AppSizes.defaultSpace),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppDetailsScreenHeaderPart(),
            AppSectionTitleText(sectionTitle: 'Course Details', buttonTxt: '10 hrs, 24 lesson',),
            AppCourseDetailsPart(),
            Gap(AppSizes.spaceBtwSections)
          ],
        ));
  }
}




