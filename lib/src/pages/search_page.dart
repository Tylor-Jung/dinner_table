import 'package:dinner_table/src/data/random_menu/random_menu_data.dart';
import 'package:dinner_table/src/pages/search_tap_pages/recomand_tap_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchFocusState();
}

class _SearchFocusState extends State<Search> with TickerProviderStateMixin {
  late TabController tapController;

  @override
  void initState() {
    super.initState();
    tapController = TabController(length: 5, vsync: this);
  }

  Widget _tapMenuOne(String menu) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        menu,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }

  Widget _body() {
    return TabBarView(
      controller: tapController,
      children: const [
        RecomandTapPage(),
        Center(child: Text('준비중 입니다.')),
        Center(child: Text('준비중 입니다.')),
        Center(child: Text('준비중 입니다.')),
        Center(child: Text('준비중 입니다.')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )),
        titleSpacing: 0,
        title: Container(
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Colors.grey[200]),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '검색',
                contentPadding: EdgeInsets.only(left: 15, top: 7, bottom: 7),
                isDense: true),
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: TabBar(
              indicatorColor: Colors.purple,
              controller: tapController,
              tabs: [
                _tapMenuOne('추천'),
                _tapMenuOne('인기'),
                _tapMenuOne('건강'),
                _tapMenuOne('한식'),
                _tapMenuOne('간편'),
              ],
            )),
      ),
      body: _body(),
    );
  }
}
