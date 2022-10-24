import 'package:dinner_table/src/controller/save_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetRandomPage extends GetView<SaveController> {
  SetRandomPage({super.key});

  var date = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  final saveController = Get.find<SaveController>();

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
    return Obx(
      () => Container(
        margin: const EdgeInsets.only(top: 20, bottom: 50),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Form(
            key: _formKey,
            child: DataTable(
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
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Tue')),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Wed')),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Thu')),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Fri')),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text(
                      'Sat',
                      style: TextStyle(color: Colors.blue),
                    )),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text(
                      'Sun',
                      style: TextStyle(color: Colors.red),
                    )),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                    DataCell(Text(saveController.mealList.toString())),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _saveButton() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
      onPressed: () {
        // firestore에 값 저장
        // saveController.saveNextWeek(saveController.main.value, side1, side2);
      },
      icon: const Icon(Icons.soup_kitchen),
      label: const Text('저장하기'),
    );
  }

  Widget _randomButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        saveController.mealList.length;
      },
      backgroundColor: Colors.purple,
      icon: const Icon(Icons.shuffle_sharp),
      label: const Text('랜덤조합'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SaveController>(
        init: SaveController(),
        initState: (_) {},
        builder: (saveController) {
          saveController.getData();
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
        });
  }
}
