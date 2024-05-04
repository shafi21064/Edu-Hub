import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/features/quiz/view/quiz_screen.dart';
import 'package:torganic/src/features/video_player/view/video_player.dart';
import '../../../common/widgets/buttons/app_buttons.dart';
import 'widget/details_screen_appbar.dart';
import 'widget/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomScrollView(
            slivers: [
              AppDetailsScreenAppBar(),
              SliverToBoxAdapter(
                child: AppDetailsScreenBody(),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
              child: AppButtons.largeFlatFilledButton(onPressed: (){
                Get.to(()=> const AppVideoPlayerScreen());
              }, buttonText: 'Start Learning')),
        ],
      ),
    );
  }
}







