import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../components/meal_card.dart';

class MealTables extends StatelessWidget {
  MealTables({super.key});

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

  Widget _nextWeekMealList() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
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
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('월요일')),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('화요일')),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('수요일')),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('목요일')),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('금요일')),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text(
                  '토요일',
                  style: TextStyle(color: Colors.blue),
                )),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text(
                  '일요일',
                  style: TextStyle(color: Colors.red),
                )),
                DataCell(Text('제육볶음')),
                DataCell(Text('미역국')),
                DataCell(Text('감자전')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _randomButton() {
    return FloatingActionButton.extended(
      onPressed: () {},
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
            _findMealTables(),
            const SizedBox(height: 20),
            _nextWeekMealList(),
          ],
        ),
      ),
      floatingActionButton: _randomButton(),
    );
  }
}
