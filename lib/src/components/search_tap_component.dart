import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

// Search 페이지 tap 메뉴 하위 디테일
class SearchTapComponent extends StatelessWidget {
  const SearchTapComponent(
      {super.key,
      required this.category,
      required this.examples,
      required this.description,
      required this.thumbnail});

  final String? category;
  final String? examples;
  final String? description;
  final String? thumbnail;

  Widget _Thumbnail() {
    return SizedBox(
      width: 110,
      height: 110,
      child: Image.network(
        thumbnail!,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _infoText() {
    return Expanded(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category!,
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                examples!,
                style: const TextStyle(fontSize: 15),
              ),
              ExpandableText(
                description!,
                style: TextStyle(color: Colors.grey),
                // prefixText: description,
                onPrefixTap: () {
                  print('유저 페이지 이동');
                },
                prefixStyle: const TextStyle(fontSize: 15),
                expandText: '더보기',
                collapseText: '접기',
                maxLines: 2,
                expandOnTextTap: false,
                collapseOnTextTap: false,
                linkColor: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Thumbnail(),
          const SizedBox(width: 15),
          _infoText(),
        ],
      ),
    );
  }
}
