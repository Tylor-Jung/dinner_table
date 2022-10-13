import 'dart:math';

import 'package:dinner_table/src/components/random_menu_component.dart';
import 'package:dinner_table/src/pages/set_random_page.dart';
import 'package:flutter/material.dart';

class SaveMenuFirestore extends StatefulWidget {
  const SaveMenuFirestore({super.key});

  @override
  State<SaveMenuFirestore> createState() => _SaveMenuFirestoreState();
}

class _SaveMenuFirestoreState extends State<SaveMenuFirestore> {
  @override
  Widget build(BuildContext context) {
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

    return DataTable(
      dividerThickness: 0,
      dataRowHeight: 80,
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Date',
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
      ],
    );
  }
}
