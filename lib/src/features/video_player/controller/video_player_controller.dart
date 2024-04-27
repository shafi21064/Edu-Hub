
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/styles/skeleton_style.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/popups/full_screen_loader.dart';
import 'package:video_player/video_player.dart';

class VideoLectureController extends GetxController {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  late Rx<Widget> thumbnail = Rx<Widget>(Container());

  @override
  void onInit() {
    //FullScreenLoader.openLoadingDialog('Loading...', AppImages.loading);
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4'));
    _initializeVideo();

    super.onInit();
  }
  // BasicCards cards = BasicCards();
  Future<void> _initializeVideo() async {
    try {
      await videoPlayerController.initialize();
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: 16 / 9,
        looping: false,
        autoPlay: false,
        allowFullScreen: true,
        cupertinoProgressColors: ChewieProgressColors(bufferedColor: Colors.red),
        materialProgressColors: ChewieProgressColors(bufferedColor: Colors.red),
         //placeholder: CircularProgressIndicator(),
        //progressIndicatorDelay: Duration(milliseconds: 5),


      );

      // final generatedThumbnail = await generateVideoThumbnail(cards.thumbnail);
       //final generatedThumbnail = await generateVideoThumbnail('https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4');
      //thumbnail.value = cards.thumbnail;
      thumbnail.value = CircularProgressIndicator();
    } catch (e) {
      thumbnail.value = const Text("Error Loading Thumbnail", style: TextStyle(color: Colors.black));
    }
  }
  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.onClose();
  }
}
