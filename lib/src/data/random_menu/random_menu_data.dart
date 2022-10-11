import 'package:dinner_table/src/components/random_mix_component.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Widget randomMenuData() {
  int mondayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int mondayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int mondayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String mondayMain = RandomMenu().randomMeal[mondayvalue];
  String mondaySide1 = RandomMenu().sideMenu1[mondayvalue1];
  String mondaySide2 = RandomMenu().sideMenu2[mondayvalue2];
// 월요일 랜덤 메뉴
  int tuesdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int tuesdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int tuesdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String tuesdayMain = RandomMenu().randomMeal[tuesdayvalue];
  String tuesdaySide1 = RandomMenu().sideMenu1[tuesdayvalue1];
  String tuesdaySide2 = RandomMenu().sideMenu2[tuesdayvalue2];
// 화요일 랜덤 메뉴
  int wednesdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int wednesdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int wednesdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String wednesdayMain = RandomMenu().randomMeal[wednesdayvalue];
  String wednesdaySide1 = RandomMenu().sideMenu1[wednesdayvalue1];
  String wednesdaySide2 = RandomMenu().sideMenu2[wednesdayvalue2];
// 수요일 랜덤 메뉴
  int thursdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int thursdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int thursdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String thursdayMain = RandomMenu().randomMeal[thursdayvalue];
  String thursdaySide1 = RandomMenu().sideMenu1[thursdayvalue1];
  String thursdaySide2 = RandomMenu().sideMenu2[thursdayvalue2];
// 목요일 랜덤 메뉴
  int fridayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int fridayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int fridayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String fridayMain = RandomMenu().randomMeal[fridayvalue];
  String fridaySide1 = RandomMenu().sideMenu1[fridayvalue1];
  String fridaySide2 = RandomMenu().sideMenu2[fridayvalue2];
// 금요일 랜덤 메뉴
  int saturdayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int saturdayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int saturdayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String saturdayMain = RandomMenu().randomMeal[saturdayvalue];
  String saturdaySide1 = RandomMenu().sideMenu1[saturdayvalue1];
  String saturdaySide2 = RandomMenu().sideMenu2[saturdayvalue2];
// 토요일 랜덤 메뉴
  int sundayvalue = Random().nextInt(RandomMenu().randomMeal.length);
  int sundayvalue1 = Random().nextInt(RandomMenu().randomMeal.length);
  int sundayvalue2 = Random().nextInt(RandomMenu().randomMeal.length);
  String sundayMain = RandomMenu().randomMeal[sundayvalue];
  String sundaySide1 = RandomMenu().sideMenu1[sundayvalue1];
  String sundaySide2 = RandomMenu().sideMenu2[sundayvalue2];
// 일요일 랜덤 메뉴

  return DataTable(
    dividerThickness: 0,
    dataRowHeight: 80,
    columns: const <DataColumn>[
      DataColumn(
        label: Expanded(
          child: Text(
            '요일별',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            '메인메뉴',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            '사이드 1',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
      DataColumn(
        label: Expanded(
          child: Text(
            '사이드 2',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ],
    rows: <DataRow>[
      DataRow(
        cells: <DataCell>[
          const DataCell(Text('Mon')),
          DataCell(Text(mondayMain)),
          DataCell(Text(mondaySide1)),
          DataCell(Text(mondaySide2)),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          const DataCell(Text('Tue')),
          DataCell(Text(tuesdayMain)),
          DataCell(Text(tuesdaySide1)),
          DataCell(Text(tuesdaySide2)),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          const DataCell(Text('Wed')),
          DataCell(Text(wednesdayMain)),
          DataCell(Text(wednesdaySide1)),
          DataCell(Text(wednesdaySide2)),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          const DataCell(Text('Thu')),
          DataCell(Text(thursdayMain)),
          DataCell(Text(thursdaySide1)),
          DataCell(Text(thursdaySide2)),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          const DataCell(Text('Fri')),
          DataCell(Text(fridayMain)),
          DataCell(Text(fridaySide1)),
          DataCell(Text(fridaySide2)),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          const DataCell(Text(
            'Sat',
            style: TextStyle(color: Colors.blue),
          )),
          DataCell(Text(saturdayMain)),
          DataCell(Text(saturdaySide1)),
          DataCell(Text(saturdaySide2)),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          const DataCell(Text(
            'Sun',
            style: TextStyle(color: Colors.red),
          )),
          DataCell(Text(sundayMain)),
          DataCell(Text(sundaySide1)),
          DataCell(Text(sundaySide2)),
        ],
      ),

      // DataRow(
      //   cells: <DataCell>[
      //     DataCell(Text(
      //       'Sat',
      //       style: TextStyle(color: Colors.blue),
      //     )),
      //     DataCell(Text('제육볶음')),
      //     DataCell(Text('미역국')),
      //     DataCell(Text('감자전')),
      //   ],
      // ),
      // DataRow(
      //   cells: <DataCell>[
      //     DataCell(Text(
      //       'Sun',
      //       style: TextStyle(color: Colors.red),
      //     )),
      //     DataCell(Text('제육볶음')),
      //     DataCell(Text('미역국')),
      //     DataCell(Text('감자전')),
      //   ],
      // ),
    ],
  );
}
