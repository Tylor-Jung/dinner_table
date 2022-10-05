import 'package:dinner_table/src/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Upload extends GetView<AuthController> {
  const Upload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
      ),
    );
  }
}
