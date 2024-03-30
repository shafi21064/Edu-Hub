
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:torganic/src/features/authentication/views/forgot_password/view/otp.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/features/home/views/home.dart';
import 'package:torganic/src/utils/constants/image_strings.dart';
import 'package:torganic/src/utils/helpers/network_manager.dart';
import 'package:torganic/src/utils/popups/loaders.dart';
import '../../../../../utils/popups/full_screen_loader.dart';

class ForgotPasswordController extends GetxController{
  static ForgotPasswordController get instance => Get.find();

  ///Controllers
  final forgotPasswordEmail = TextEditingController();

  GlobalKey<FormState> forgotEmailKey = GlobalKey<FormState>();



  Future<void> sendCode() async{
    final isConnected = await NetworkManager.instance.isConnected();
    try{
      /// Start Loading
      FullScreenLoader.openLoadingDialog('Processing', AppImages.loaderAnimation);

      ///Check Internet
      if(!isConnected) return;

      /// Validate Form
      if(!forgotEmailKey.currentState!.validate()) return;


    }catch(e){
      /// Error
      AppLoaders.errorSnackBar(title: 'oh, Snap', message: e.toString());
    }finally{
      FullScreenLoader.stopLoading();
      if(forgotEmailKey.currentState!.validate()){
        Get.offAll(const Otp());
      }
    }
  }
}