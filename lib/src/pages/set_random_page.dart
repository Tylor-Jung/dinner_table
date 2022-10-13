import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dinner_table/src/components/random_menu_component.dart';
import 'package:dinner_table/src/pages/random_menu_page/save_menu_firestore.dart';
import 'package:flutter/material.dart';

class SetRandomPage extends StatefulWidget {
  const SetRandomPage({super.key});

  @override
  State<SetRandomPage> createState() => _NextWeekPageState();
}

class _NextWeekPageState extends State<SetRandomPage> {
  FirebaseFirestore product = FirebaseFirestore.instance;

  var date = DateTime.now();

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 35),
            Text(
              '다음주 식단표',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              'JMT 먹조합을 완성해보자',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Text(
              '더욱 디테일한 수정이 필요하다면? \n내 마음대로 개별메뉴를 바꿔보자!',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 8),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _nextWeekPage() {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 70),
      child: SingleChildScrollView(
        // const를 넣으면 SetState가 작동하지 않아 problem 상태로 일단 둠
        scrollDirection: Axis.horizontal,
        child: SaveMenuFirestore(),
      ),
    );
  }

  Widget _saveButton() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
      onPressed: () async {
        // 에러뜸 cloud_firestore/permission-denied]
        // The caller does not have permission to execute the specified operation
        final int mondayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int mondayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int mondayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String mondayMain = RandomMenu().randomMeal[mondayvalue];
        final String mondaySide1 = RandomMenu().sideMenu1[mondayvalue1];
        final String mondaySide2 = RandomMenu().sideMenu2[mondayvalue2];
// 월요일 랜덤 메뉴
        final int tuesdayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int tuesdayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int tuesdayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String tuesdayMain = RandomMenu().randomMeal[tuesdayvalue];
        final String tuesdaySide1 = RandomMenu().sideMenu1[tuesdayvalue1];
        final String tuesdaySide2 = RandomMenu().sideMenu2[tuesdayvalue2];
// 화요일 랜덤 메뉴
        final int wednesdayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int wednesdayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int wednesdayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String wednesdayMain = RandomMenu().randomMeal[wednesdayvalue];
        final String wednesdaySide1 = RandomMenu().sideMenu1[wednesdayvalue1];
        final String wednesdaySide2 = RandomMenu().sideMenu2[wednesdayvalue2];
// 수요일 랜덤 메뉴
        final int thursdayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int thursdayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int thursdayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String thursdayMain = RandomMenu().randomMeal[thursdayvalue];
        final String thursdaySide1 = RandomMenu().sideMenu1[thursdayvalue1];
        final String thursdaySide2 = RandomMenu().sideMenu2[thursdayvalue2];
// 목요일 랜덤 메뉴
        final int fridayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int fridayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int fridayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String fridayMain = RandomMenu().randomMeal[fridayvalue];
        final String fridaySide1 = RandomMenu().sideMenu1[fridayvalue1];
        final String fridaySide2 = RandomMenu().sideMenu2[fridayvalue2];
// 금요일 랜덤 메뉴
        final int saturdayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int saturdayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int saturdayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String saturdayMain = RandomMenu().randomMeal[saturdayvalue];
        final String saturdaySide1 = RandomMenu().sideMenu1[saturdayvalue1];
        final String saturdaySide2 = RandomMenu().sideMenu2[saturdayvalue2];
// 토요일 랜덤 메뉴
        final int sundayvalue =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int sundayvalue1 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final int sundayvalue2 =
            Random().nextInt(RandomMenu().randomMeal.length);
        final String sundayMain = RandomMenu().randomMeal[sundayvalue];
        final String sundaySide1 = RandomMenu().sideMenu1[sundayvalue1];
        final String sundaySide2 = RandomMenu().sideMenu2[sundayvalue2];

// firestore 등록
        final monday = <String, dynamic>{
          'mondayMain': mondayMain,
          'mondaySide1': mondaySide1,
          'mondaySide2': mondaySide2,
        };
        final tuesday = <String, dynamic>{
          'tuesdayMain': tuesdayMain,
          'tuesdaySide1': tuesdaySide1,
          'tuesdaySide2': tuesdaySide2,
        };
        final wednesday = <String, dynamic>{
          'wednesdayMain': wednesdayMain,
          'wednesdaySide1': wednesdaySide1,
          'wednesdaySide2': wednesdaySide2,
        };
        final thursday = <String, dynamic>{
          'thursdayMain': thursdayMain,
          'thursdaySide1': thursdaySide1,
          'thursdaySide2': thursdaySide2,
        };
        final friday = <String, dynamic>{
          'fridayMain': fridayMain,
          'fridaySide1': fridaySide1,
          'fridaySide2': fridaySide2,
        };
        final saturday = <String, dynamic>{
          'saturdayMain': saturdayMain,
          'saturdaySide1': saturdaySide1,
          'saturdaySide2': saturdaySide2,
        };
        final sunday = <String, dynamic>{
          'sundayMain': sundayMain,
          'sundaySide1': sundaySide1,
          'sundaySide2': sundaySide2,
        };

        await product.collection('new').doc('nextWeek').set({
          'monday': monday,
          'tuesday': tuesday,
          'wednesday': wednesday,
          'thursday': thursday,
          'friday': friday,
          'saturday': saturday,
          'sunday': sunday,
        });
      },
      icon: const Icon(Icons.soup_kitchen),
      label: const Text('저장하기'),
    );
  }

  Widget _randomButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        setState(() {});
      },
      backgroundColor: Colors.purple,
      icon: const Icon(Icons.shuffle_sharp),
      label: const Text('랜덤조합'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            _saveButton(),
            _nextWeekPage(),
          ],
        ),
      ),
      floatingActionButton: _randomButton(),
    );
  }
}
