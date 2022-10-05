import 'package:dinner_table/src/controller/auth_controller.dart';
import 'package:dinner_table/src/controller/bottom_nav_controller.dart';
import 'package:dinner_table/src/controller/home_page_controller.dart';
import 'package:dinner_table/src/controller/upload_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
    Get.put(AuthController(), permanent: true);
  }

  static addtionalBinding() {
    Get.put(UploadController(), permanent: true);
    Get.put(HomeController(), permanent: true);
  }
}
