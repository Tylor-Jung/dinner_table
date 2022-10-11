import 'package:dinner_table/src/components/avatar_widget_component.dart';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.descriotion});

  final String? descriotion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 150,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 15,
            right: 15,
            top: 0,
            bottom: 0,
            child: Column(
              children: [
                const SizedBox(height: 10),
                AvatarWidget(
                  type: AvatarType.type2,
                  thumbPath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdzJM4WPpBOa14pewi-aUC_8ItKbX_LU8dYw&usqp=CAU',
                  size: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  descriotion!,
                  style: const TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {},
                  child: const Text('추가하기'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: GestureDetector(
              child: const Icon(
                Icons.close,
                size: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
