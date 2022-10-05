import 'package:dinner_table/src/components/post_widget_components.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 10),
          Text(
            '오늘 우리 뭐 먹어?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),
          Text(
            '이번주 식단표',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),
          Text(
            '(MM/DD ~ MM/DD)',
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
    return  PostWidget();
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
