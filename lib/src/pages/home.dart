import 'package:dinner_table/src/components/weekly_meal_table.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  Home({super.key});

  var date = DateTime.now();

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            '오늘 우리 뭐 먹어?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),
          Text(
            DateFormat('dd MMM, yyy').format(date),
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 8),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget _dinnerList() {
    return WeeklyMealTable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _header(),
          _dinnerList(),
        ],
      ),
    );
  }
}
