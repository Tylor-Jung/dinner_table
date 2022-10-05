import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/message_pop_up.dart';

enum PageName {
  HOME,
  SEARCH,
  ACTIVITY,
  // UPLOAD,
  // MYPAGE
}

class BottomNavController extends GetxController {
  static BottomNavController get to => Get.find();
  RxInt pageIndex = 0.obs;
  GlobalKey<NavigatorState> searchPageNavigationkey =
      GlobalKey<NavigatorState>();
  List<int> bottomHistory = [0];

  void changeBottomNav(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];
    switch (page) {
      // case PageName.UPLOAD:
      //   Get.to(() => Upload(), binding: BindingsBuilder(() {
      //     Get.put(UploadController());
      //   }));
      //   break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
        // case PageName.MYPAGE:
        _chagePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _chagePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) return;
    if (bottomHistory.last != value) {
      bottomHistory.add(value);
    }
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      showDialog(
        context: Get.context!,
        builder: (context) => MessagePopUp(
          title: '시스템',
          messgae: '종료하시겠습니까?',
          okCallback: () {
            exit(0);
          },
          cancelCallback: Get.back,
        ),
      );
      return true;
    } 
    else {
      var page = PageName.values[bottomHistory.last];
      if (page == PageName.SEARCH) {
        var value = await searchPageNavigationkey.currentState!.maybePop();
        if (value) return false;
      }
      bottomHistory.removeLast();
      var index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      return false;
    }
  }
}
