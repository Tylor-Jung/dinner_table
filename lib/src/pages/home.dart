import 'package:dinner_table/src/components/weekly_meal_table.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  Home({super.key});

  TextEditingController textEditingController = TextEditingController();
  var date = DateTime.now();

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            '오늘 우리 뭐 먹어?',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
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
    );
  }

  Widget _singleMealList() {
    return ClipRRect(
      child: Card(
        child: ListTile(
          title: _todayMeal(),
          subtitle: _infoDescription(),
        ),
      ),
    );
  }

  Widget _todayMeal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 240,
          margin: const EdgeInsets.only(top: 15),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/meal1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '메인메뉴',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('제육볶음'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/meal3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '사이드 메뉴 1',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('미역국'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/meal4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '사이드 메뉴 2',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('달걀말이'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoDescription() {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '특별 주문',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          TextField(
            controller: textEditingController,
            decoration: const InputDecoration(
              hintText: '이번주 특별 주문 및 특이사항을 알려주세요.',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          // ExpandableText(
          //   '',
          //   // prefixText: '행복한 아빠\n',
          //   // onPrefixTap: () {
          //   //   print('유저 페이지 이동');
          //   // },
          //   prefixStyle: TextStyle(fontWeight: FontWeight.bold),
          //   expandText: '더보기',
          //   collapseText: '접기',
          //   maxLines: 3,
          //   expandOnTextTap: true,
          //   collapseOnTextTap: true,
          //   linkColor: Colors.grey,
          // )
        ],
      ),
    );
  }

  // Widget _date(String date) {
  //   return Container(
  //     padding: EdgeInsets.only(top: 25, left: 25),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(
  //           date,
  //           style: TextStyle(fontSize: 20),
  //         ),
  //         IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
  //       ],
  //     ),
  //   );
  // }

  Widget _dinnerList() {
    return WeeklyMealTable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _header(),
          _singleMealList(),
          _dinnerList(),
        ],
      ),
    );
  }
}
