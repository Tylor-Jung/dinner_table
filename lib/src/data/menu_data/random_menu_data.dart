import 'package:dinner_table/src/components/random_menu_component.dart';
import 'package:dinner_table/src/pages/random_menu_page/save_menu_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// todo1: firestore에 요일별 메뉴등록
// todo2: 요일별 메뉴 textformfield 형식으로 변환

Widget randomMenuData() {
  final int mondayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int mondayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int mondayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String mondayMain = RandomMenu().randomMeal[mondayvalue];
  final String mondaySide1 = RandomMenu().sideMenu1[mondayvalue1];
  final String mondaySide2 = RandomMenu().sideMenu2[mondayvalue2];
// 월요일 랜덤 메뉴
  final int tuesdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int tuesdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int tuesdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String tuesdayMain = RandomMenu().randomMeal[tuesdayvalue];
  final String tuesdaySide1 = RandomMenu().sideMenu1[tuesdayvalue1];
  final String tuesdaySide2 = RandomMenu().sideMenu2[tuesdayvalue2];
// 화요일 랜덤 메뉴
  final int wednesdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int wednesdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int wednesdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String wednesdayMain = RandomMenu().randomMeal[wednesdayvalue];
  final String wednesdaySide1 = RandomMenu().sideMenu1[wednesdayvalue1];
  final String wednesdaySide2 = RandomMenu().sideMenu2[wednesdayvalue2];
// 수요일 랜덤 메뉴
  final int thursdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int thursdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int thursdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String thursdayMain = RandomMenu().randomMeal[thursdayvalue];
  final String thursdaySide1 = RandomMenu().sideMenu1[thursdayvalue1];
  final String thursdaySide2 = RandomMenu().sideMenu2[thursdayvalue2];
// 목요일 랜덤 메뉴
  final int fridayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int fridayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int fridayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String fridayMain = RandomMenu().randomMeal[fridayvalue];
  final String fridaySide1 = RandomMenu().sideMenu1[fridayvalue1];
  final String fridaySide2 = RandomMenu().sideMenu2[fridayvalue2];
// 금요일 랜덤 메뉴
  final int saturdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int saturdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int saturdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String saturdayMain = RandomMenu().randomMeal[saturdayvalue];
  final String saturdaySide1 = RandomMenu().sideMenu1[saturdayvalue1];
  final String saturdaySide2 = RandomMenu().sideMenu2[saturdayvalue2];
// 토요일 랜덤 메뉴
  final int sundayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  final int sundayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  final int sundayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  final String sundayMain = RandomMenu().randomMeal[sundayvalue];
  final String sundaySide1 = RandomMenu().sideMenu1[sundayvalue1];
  final String sundaySide2 = RandomMenu().sideMenu2[sundayvalue2];
// 일요일 랜덤 메뉴

  return randomMenuDataFirestore(
      mondayMain,
      mondaySide1,
      mondaySide2,
      tuesdayMain,
      tuesdaySide1,
      tuesdaySide2,
      wednesdayMain,
      wednesdaySide1,
      wednesdaySide2,
      thursdayMain,
      thursdaySide1,
      thursdaySide2,
      fridayMain,
      fridaySide1,
      fridaySide2,
      saturdayMain,
      saturdaySide1,
      saturdaySide2,
      sundayMain,
      sundaySide1,
      sundaySide2);
}

SaveMenuFirestore randomMenuDataFirestore(
    String mondayMain,
    String mondaySide1,
    String mondaySide2,
    String tuesdayMain,
    String tuesdaySide1,
    String tuesdaySide2,
    String wednesdayMain,
    String wednesdaySide1,
    String wednesdaySide2,
    String thursdayMain,
    String thursdaySide1,
    String thursdaySide2,
    String fridayMain,
    String fridaySide1,
    String fridaySide2,
    String saturdayMain,
    String saturdaySide1,
    String saturdaySide2,
    String sundayMain,
    String sundaySide1,
    String sundaySide2) {
  return const SaveMenuFirestore();
}
