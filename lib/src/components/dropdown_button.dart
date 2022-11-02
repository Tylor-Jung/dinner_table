import 'package:dinner_table/src/controller/dropdown_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownButtonWidget extends GetView<DropdownButtonController> {
  const DropDownButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton(
        onChanged: (int? value) {
          controller.changeDropdownMenu(value!);
        },
        value: controller.index.value,
        items:const [
          DropdownMenuItem(
            value: 0,
            child: Text('월요일'),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('화요일'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('수요일'),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text('목요일'),
          ),
          DropdownMenuItem(
            value: 4,
            child: Text('금요일'),
          ),
          DropdownMenuItem(
            value: 5,
            child: Text('토요일'),
          ),
          DropdownMenuItem(
            value: 6,
            child: Text('일요일'),
          ),
        ],
      ),
    );
  }
}
