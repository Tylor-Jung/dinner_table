import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dinner_table/src/model/menu_model.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  var isLoading = false;
  var menuList = <MenuModel>[];

  Future<void> addMenu(
    String menu,
    String id,
    // String date,
  ) async {
    await FirebaseFirestore.instance
        .collection('my-menu')
        .doc(id != '' ? id : null)
        .set(
      {
        'menu': menu,
        // 'id': id,
        // 'date': date,
      },
      SetOptions(merge: true),
    ).then(
      (value) => getData(),
    );
  }

  Future<void> getData() async {
    try {
      QuerySnapshot _menuSnap = await FirebaseFirestore.instance
          .collection('my-menu')
          .orderBy('menu')
          .get();

      menuList.clear();

      for (var item in _menuSnap.docs) {
        menuList.add(MenuModel(
          item.id,
          item['menu'],
          // item['요일'],
        ));
      }
      isLoading = false;
      update();
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }

  void deleteMenu(String id) {
    FirebaseFirestore.instance.collection('my-menu').doc(id).delete();
  }
}
