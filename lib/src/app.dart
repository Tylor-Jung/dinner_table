import 'package:dinner_table/src/controller/bottom_nav_controller.dart';
import 'package:dinner_table/src/pages/home.dart';
import 'package:dinner_table/src/pages/meal_tables.dart';
import 'package:dinner_table/src/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// getx controller 셋팅방법
// 1, controller 파일, controller class 생성
// 2, Rx 형식으로 변수 생성
// 3, GetView<파일명> 으로 state 관리
// 3, controller.xxx.value 인스턴스를 통해 값 변경

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.willPopAction,
      child: Obx(
        () => Scaffold(
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Home(),
              const Search(),
              // const Upload(),
              MealTables(),
              // Container(child: Center(child: Text('MYPAGE'))),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.deepPurpleAccent,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(
                  Icons.saved_search_outlined,
                  color: Colors.deepPurpleAccent,
                ),
                label: 'Search',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.soup_kitchen_rounded),
              //   label: 'Upload',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star_border),
                activeIcon: Icon(
                  Icons.star,
                  color: Colors.deepPurpleAccent,
                ),
                label: 'Meal Tables',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.person_outline),
              //   activeIcon: Icon(
              //     Icons.person,
              //     color: Colors.deepPurpleAccent,
              //   ),
              //   label: 'My Page',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
