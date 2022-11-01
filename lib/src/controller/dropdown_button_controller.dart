import 'package:get/get.dart';

class DropdownButtonController extends GetxController {
  RxInt index = 0.obs;
  void changeDropdownMenu(int? itemIndex) {
    index(itemIndex);
  }
}
