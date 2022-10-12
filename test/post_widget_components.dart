import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  Widget _header(String? date) {
    return Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Container(
          padding: const EdgeInsets.only(bottom: 15),
          child: const Text(
            '월요일',
            style: TextStyle(fontSize: 20),
          ),
        ));
  }

  Widget _image() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(''),
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset('assets/images/meal1.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '메인메뉴',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text('제육볶음'),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset('assets/images/meal1.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '사이드 메뉴 1',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text('제육볶음'),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset('assets/images/meal1.jpg'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '사이드 메뉴 2',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text('제육볶음'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.thumb_up,
              ),
              SizedBox(width: 10),
              Icon(Icons.reply_all_outlined),
              SizedBox(width: 10),
              Icon(Icons.message),
            ],
          ),
          const Icon(Icons.bookmark),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '재료준비',
            style: TextStyle(fontSize: 20),
          ),
          ExpandableText(
            '컨텐츠 1입니다. \n컨텐츠 1입니다. \n컨텐츠 1입니다. \n컨텐츠 1입니다. \n',
            // prefixText: '행복한 아빠\n',
            onPrefixTap: () {},
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
            expandText: '더보기',
            collapseText: '접기',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          '댓글 199개 모두 보기',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _dataAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        '1일전',
        style: TextStyle(fontSize: 11, color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _image(),
          const SizedBox(height: 15),
          _infoCount(),
          const SizedBox(height: 5),
          _infoDescription(),
          const SizedBox(height: 5),
          _replyTextBtn(),
          const SizedBox(height: 5),
          _dataAgo(),
        ],
      ),
    );
  }
}
