import 'package:dinner_table/src/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class HomeController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  Rx<IUser?> targetUser = IUser().obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);

    _loadData(); // mypage에서 다른 사람의 계정으로 넘어가도 화면을 재사용하기 위해
  }



  void _loadData() {

    // 포스트 리스트 로드
    // 사용자 정보 로드
  }
}
