// import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/layouts/layout_with_back_button/layout_with_back_button.dart';
import 'package:torganic/src/features/video_player/controller/video_player_controller.dart';


class AppVideoPlayerScreen extends StatelessWidget {
  const AppVideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VideoLectureController());
    return AppLayoutWithBackButton(
        title: const Text('Video Player'),
        defaultPadding: false,
        customPadding: EdgeInsets.zero,
        body: Center(
          child: Obx(
                () => controller.videoPlayerController.value.isInitialized
                ? AspectRatio(
              aspectRatio:
              controller.videoPlayerController.value.aspectRatio,
              child: Chewie(
                controller: controller.chewieController,
              ),
            )
                : AspectRatio(
              aspectRatio: 16 / 9,
              child: Center(
                child: controller.thumbnail.value,
              ),
            ),
          ),
        )

    );
  }
}

