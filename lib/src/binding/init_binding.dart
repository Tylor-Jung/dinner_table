import 'package:dinner_table/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

import '../controller/save_menu_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
    Get.put(SaveController(), permanent: true);
    // Get.put(HomeController(), permanent: true);
  }
}
