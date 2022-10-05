import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeeklyMealTable extends StatelessWidget {
  WeeklyMealTable({super.key});
  TextEditingController textEditingController = TextEditingController();

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
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('월요일')),
                    DataCell(Text('1111')),
                    DataCell(Text('1111')),
                    DataCell(Text('1111')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('화요일')),
                    DataCell(Text('2222')),
                    DataCell(Text('2222')),
                    DataCell(Text('2222')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('수요일')),
                    DataCell(Text('3333')),
                    DataCell(Text('3333')),
                    DataCell(Text('3333')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('목요일')),
                    DataCell(Text('4444')),
                    DataCell(Text('4444')),
                    DataCell(Text('4444')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('금요일')),
                    DataCell(Text('5555')),
                    DataCell(Text('5555')),
                    DataCell(Text('5555')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(
                      '토요일',
                      style: TextStyle(color: Colors.blue),
                    )),
                    DataCell(Text('6666')),
                    DataCell(Text('6666')),
                    DataCell(Text('6666')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(
                      '일요일',
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
          _singleMealList(),
          _mealTable(),
        ],
      ),
    );
  }
}
