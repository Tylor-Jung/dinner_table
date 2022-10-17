import 'package:dinner_table/src/components/meal_card_component.dart';
import 'package:dinner_table/src/data/menu_data/saved_menu_data.dart';
import 'package:dinner_table/src/pages/set_random_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NextWeekPage extends StatefulWidget {
  NextWeekPage({super.key});

  @override
  State<NextWeekPage> createState() => _NextWeekPageState();
}

class _NextWeekPageState extends State<NextWeekPage> {
  var date = DateTime.now();

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            const Text(
              '다음주 식단표',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            const Text(
              'JMT 먹조합을 완성해보자',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat('dd MMM, yyy').format(date),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 8),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _findMealTables() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '내가 찜한 메뉴 리스트',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                '모두 보기 >',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                10,
                (index) => MealCard(descriotion: '"$index"를 추가 하시겠습니까?'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Divider(thickness: 1),
      ],
    );
  }

  Widget _savedMenuData() {
    return const SavedMenuDataTable();
  }

  Widget _goToRandomMenuPageButton() {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
        onPressed: () {
          Get.to(() => SetRandomPage());
        },
        icon: const Icon(Icons.arrow_forward),
        label: const Text('먹조합 하러가기'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            _findMealTables(),
            const SizedBox(height: 20),
            _goToRandomMenuPageButton(),
            const SizedBox(height: 10),
            _savedMenuData(),
          ],
        ),
      ),
    );
  }
}
