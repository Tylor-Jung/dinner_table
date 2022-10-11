import 'package:flutter/material.dart';

class WeeklyMealTable extends StatelessWidget {
  const WeeklyMealTable({super.key});

  Widget _mealTable() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            '이번주 식단표',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              showCheckboxColumn: true,
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
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text('Mon')),
                    DataCell(Text('1111')),
                    DataCell(Text('1111')),
                    DataCell(Text('1111')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Tue')),
                    DataCell(Text('2222')),
                    DataCell(Text('2222')),
                    DataCell(Text('2222')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Wed')),
                    DataCell(Text('3333')),
                    DataCell(Text('3333')),
                    DataCell(Text('3333')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Thu')),
                    DataCell(Text('4444')),
                    DataCell(Text('4444')),
                    DataCell(Text('4444')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Fri')),
                    DataCell(Text('5555')),
                    DataCell(Text('5555')),
                    DataCell(Text('5555')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text(
                      'Sat',
                      style: TextStyle(color: Colors.blue),
                    )),
                    DataCell(Text('6666')),
                    DataCell(Text('6666')),
                    DataCell(Text('6666')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text(
                      'Sun',
                      style: TextStyle(color: Colors.red),
                    )),
                    DataCell(Text('7777')),
                    DataCell(Text('7777')),
                    DataCell(Text('7777')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _mealTable(),
        ],
      ),
    );
  }
}
