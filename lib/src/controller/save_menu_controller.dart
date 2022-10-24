import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/random_menu_model.dart';

class SaveController extends GetxController {
  static SaveController get to => Get.find();
  var isLoading = false;
  final RxList<RandomMenuModel> mealList = <RandomMenuModel>[].obs;

  Future<void> saveNextWeek(
    String mondayMain,
    String mondaySide1,
    String mondaySide2,
    String tuesdayMain,
    String tuesdaySide1,
    String tuesdaySide2,
    String wednesdayMain,
    String wednesdaySide1,
    String wednesdaySide2,
    String thursdayMain,
    String thursdaySide1,
    String thursdaySide2,
    String fridayMain,
    String fridaySide1,
    String fridaySide2,
    String saturdayMain,
    String saturdaySide1,
    String saturdaySide2,
    String sundayMain,
    String sundaySide1,
    String sundaySide2,
  ) async {
    await FirebaseFirestore.instance.collection('nextWeek').doc().set(
      {
        'mondayMain': mondayMain,
        'mondaySide1': mondaySide1,
        'mondaySide2': mondaySide2,
        'tuesdayMain': tuesdayMain,
        'tuesdaySide1': tuesdaySide1,
        'tuesdaySide2': tuesdaySide2,
        'wednesdayMain': wednesdayMain,
        'wednesdaySide1': wednesdaySide1,
        'wednesdaySide2': wednesdaySide2,
        'thursdayMain': thursdayMain,
        'thursdaySide1': thursdaySide1,
        'thursdaySide2': thursdaySide2,
        'fridayMain': fridayMain,
        'fridaySide1': fridaySide1,
        'fridaySide2': fridaySide2,
        'saturdayMain': saturdayMain,
        'saturdaySide1': saturdaySide1,
        'saturdaySide2': saturdaySide2,
        'sundayMain': sundayMain,
        'sundaySide1': sundaySide1,
        'sundaySide2': sundaySide2,
      },
      SetOptions(merge: true),
    ).then(
      (value) => getData(),
    );
  }

  Future<void> getData() async {
    try {
      QuerySnapshot _snapshot = await FirebaseFirestore.instance
          .collection('nextWeek')
          .orderBy('date')
          .get();
      mealList.clear(); // clear 안하면 계속 값을 불러옴

      for (var item in _snapshot.docs) {
        mealList.add(
          RandomMenuModel(
              //  item.data().,
              ),
        );
      }
      isLoading = false;
      update();
    } catch (e) {
      print(e.toString());
    }
  }
}
