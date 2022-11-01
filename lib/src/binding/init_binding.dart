import 'package:dinner_table/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

import '../controller/dropdown_button_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
    Get.put(DropdownButtonController(), permanent: true);
  }
}
