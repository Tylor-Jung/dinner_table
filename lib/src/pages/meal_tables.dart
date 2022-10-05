import 'package:dinner_table/src/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MealTables extends GetView<AuthController> {
  const MealTables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 35),
              Text(
                '이번달 식단표',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text(
                'JMT 먹조합을 완성해보자',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text(
                'MM/YY',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 8),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.purple,
        icon: Icon(Icons.shuffle_sharp),
        label: Text('랜덤조합'),
      ),
    );
  }
}
