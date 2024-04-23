
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigationController extends GetxController{
  static BottomNavigationController get instance => Get.find();


   final PersistentTabController controller = PersistentTabController();

   @override
  void onInit() {
   controller.jumpToTab(0);
    super.onInit();
  }

  void changePage(int pageIndex){
     controller.jumpToTab(pageIndex);
  }

}
