import 'package:dinner_table/src/data/menu_data/random_menu_data.dart';
import 'package:flutter/material.dart';

class SetRandomPage extends StatefulWidget {
  SetRandomPage({super.key});

  @override
  State<SetRandomPage> createState() => _NextWeekPageState();
}

class _NextWeekPageState extends State<SetRandomPage> {
  var date = DateTime.now();

  @override
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
      margin: const EdgeInsets.only(top: 20, bottom: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: randomMenuData(),
      ),
    );
  }

  Widget _saveButton() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
      onPressed: () {},
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
