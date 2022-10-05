import 'package:dinner_table/src/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFocus extends StatefulWidget {
  const SearchFocus({super.key});

  @override
  State<SearchFocus> createState() => _SearchFocusState();
}

class _SearchFocusState extends State<SearchFocus>
    with TickerProviderStateMixin {
  late TabController tapController;

  @override
  void initState() {
    super.initState();
    tapController = TabController(length: 5, vsync: this);
  }

  Widget _tapMenuOne(String menu) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        menu,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }

  Widget _body() {
    return TabBarView(
      controller: tapController,
      children: const [
        Center(child: Text('추천 페이지')),
        Center(child: Text('인기 페이지')),
        Center(child: Text('건강 페이지')),
        Center(child: Text('한식 페이지')),
        Center(child: Text('간편 페이지')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: BottomNavController.to.willPopAction,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )),
        titleSpacing: 0,
        title: Container(
          margin: EdgeInsets.only(right: 15),
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
            child: Container(
              height: AppBar().preferredSize.height,
              width: Size.infinite.width,
              child: TabBar(
                controller: tapController,
                tabs: [
                  _tapMenuOne('추천'),
                  _tapMenuOne('인기'),
                  _tapMenuOne('건강'),
                  _tapMenuOne('한식'),
                  _tapMenuOne('간편'),
                ],
              ),
            )),
      ),
      body: _body(),
    );
  }
}
