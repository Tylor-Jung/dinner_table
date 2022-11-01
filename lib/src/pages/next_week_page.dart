import 'package:dinner_table/src/components/dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class NextWeekPage extends StatelessWidget {
  NextWeekPage({super.key});
  TextEditingController _textEditingController = TextEditingController();
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

  Widget _dailogContent() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              TextFormField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                    hintText: '메뉴를 입력하세요.',
                    hintStyle: TextStyle(color: Colors.grey)),
              )
            ],
          ),
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            DropDownButtonWidget(),
          ],
        ),
      ],
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
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            content: _dailogContent(),
            title: '뭐먹을건데?',
            textCancel: '취소',
            textConfirm: '확인',
            barrierDismissible: false,
            radius: 0,
            onConfirm: () {},
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
