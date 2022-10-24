import 'dart:math';

import '../components/random_menu_component.dart';

var _random = Random().nextInt(RandomMenu().randomMeal.length);

class RandomMenuModel {
  static int mondayvalue = _random;
  static int mondayvalue1 = _random;
  static int mondayvalue2 = _random;

  static int tuesdayvalue = _random;
  static int tuesdayvalue1 = _random;
  static int tuesdayvalue2 = _random;

  static int wednesdayvalue = _random;
  static int wednesdayvalue1 = _random;
  static int wednesdayvalue2 = _random;

  static int thursdayvalue = _random;
  static int thursdayvalue1 = _random;
  static int thursdayvalue2 = _random;

  static int fridayvalue = _random;
  static int fridayvalue1 = _random;
  static int fridayvalue2 = _random;

  static int saturdayvalue = _random;
  static int saturdayvalue1 = _random;
  static int saturdayvalue2 = _random;

  static int sundayvalue = _random;
  static int sundayvalue1 = _random;
  static int sundayvalue2 = _random;

  String? mondayMain = RandomMenu().randomMeal[mondayvalue];
  String? mondaySide1 = RandomMenu().randomMeal[mondayvalue1];
  String? mondaySide2 = RandomMenu().randomMeal[mondayvalue2];
// 월요일 랜덤 메뉴
  String? tuesdayMain = RandomMenu().randomMeal[tuesdayvalue];
  String? tuesdaySide1 = RandomMenu().randomMeal[tuesdayvalue1];
  String? tuesdaySide2 = RandomMenu().randomMeal[tuesdayvalue2];
// 화요일 랜덤 메뉴
  String? wednesdayMain = RandomMenu().randomMeal[wednesdayvalue];
  String? wednesdaySide1 = RandomMenu().randomMeal[wednesdayvalue1];
  String? wednesdaySide2 = RandomMenu().randomMeal[wednesdayvalue2];
// 수요일 랜덤 메뉴
  String? thursdayMain = RandomMenu().randomMeal[thursdayvalue];
  String? thursdaySide1 = RandomMenu().randomMeal[thursdayvalue1];
  String? thursdaySide2 = RandomMenu().randomMeal[thursdayvalue2];
// 목요일 랜덤 메뉴
  String? fridayMain = RandomMenu().randomMeal[fridayvalue];
  String? fridaySide1 = RandomMenu().randomMeal[fridayvalue1];
  String? fridaySide2 = RandomMenu().randomMeal[fridayvalue2];
// 금요일 랜덤 메뉴
  String? saturdayMain = RandomMenu().randomMeal[saturdayvalue];
  String? saturdaySide1 = RandomMenu().randomMeal[saturdayvalue1];
  String? saturdaySide2 = RandomMenu().randomMeal[saturdayvalue2];
// 토요일 랜덤 메뉴
  String? sundayMain = RandomMenu().randomMeal[sundayvalue];
  String? sundaySide1 = RandomMenu().randomMeal[sundayvalue1];
  String? sundaySide2 = RandomMenu().randomMeal[sundayvalue2];

// 일요일 랜덤 메뉴

  RandomMenuModel({
    this.mondayMain,
    this.mondaySide1,
    this.mondaySide2,
    this.tuesdayMain,
    this.tuesdaySide1,
    this.tuesdaySide2,
    this.wednesdayMain,
    this.wednesdaySide1,
    this.wednesdaySide2,
    this.thursdayMain,
    this.thursdaySide1,
    this.thursdaySide2,
    this.fridayMain,
    this.fridaySide1,
    this.fridaySide2,
    this.saturdayMain,
    this.saturdaySide1,
    this.saturdaySide2,
    this.sundayMain,
    this.sundaySide1,
    this.sundaySide2,
  });

  factory RandomMenuModel.init() {
    return RandomMenuModel(
      mondayMain: '',
      mondaySide1: '',
      mondaySide2: '',
      tuesdayMain: '',
      tuesdaySide1: '',
      tuesdaySide2: '',
      wednesdayMain: '',
      wednesdaySide1: '',
      wednesdaySide2: '',
      thursdayMain: '',
      thursdaySide1: '',
      thursdaySide2: '',
      fridayMain: '',
      fridaySide1: '',
      fridaySide2: '',
      saturdayMain: '',
      saturdaySide1: '',
      saturdaySide2: '',
      sundayMain: '',
      sundaySide1: '',
      sundaySide2: '',
    );
  }
  factory RandomMenuModel.fromJson(String docId, Map<String, dynamic> json) {
    return RandomMenuModel(
      mondayMain: json['mondayMain'] ?? '',
      mondaySide1: json['mondaySide1'] ?? '',
      mondaySide2: json['mondaySide2'] ?? '',
      tuesdayMain: json['tuesdayMain'] ?? '',
      tuesdaySide1: json['tuesdaySide1'] ?? '',
      tuesdaySide2: json['tuesdaySide2'] ?? '',
      wednesdayMain: json['wednesdayMain'] ?? '',
      wednesdaySide1: json['wednesdaySide1'] ?? '',
      wednesdaySide2: json['wednesdaySide2'] ?? '',
      thursdayMain: json['thursdayMain'] ?? '',
      thursdaySide1: json['thursdaySide1'] ?? '',
      thursdaySide2: json['thursdaySide2'] ?? '',
      fridayMain: json['fridayMain'] ?? '',
      fridaySide1: json['fridaySide1'] ?? '',
      fridaySide2: json['fridaySide2'] ?? '',
      saturdayMain: json['saturdayMain'] ?? '',
      saturdaySide1: json['saturdaySide1'] ?? '',
      saturdaySide2: json['saturdaySide2'] ?? '',
      sundayMain: json['sundayMain'] ?? '',
      sundaySide1: json['sundaySide1'] ?? '',
      sundaySide2: json['sundaySide2'] ?? '',
    );
  }

  RandomMenuModel copyWith({
    String? mondayMain,
    String? mondaySide1,
    String? mondaySide2,
    String? tuesdayMain,
    String? tuesdaySide1,
    String? tuesdaySide2,
    String? wednesdayMain,
    String? wednesdaySide1,
    String? wednesdaySide2,
    String? thursdayMain,
    String? thursdaySide1,
    String? thursdaySide2,
    String? fridayMain,
    String? fridaySide1,
    String? fridaySide2,
    String? saturdayMain,
    String? saturdaySide1,
    String? saturdaySide2,
    String? sundayMain,
    String? sundaySide1,
    String? sundaySide2,
  }) {
    return RandomMenuModel(
      mondayMain: mondayMain ?? mondayMain,
      mondaySide1: mondaySide1 ?? mondaySide1,
      mondaySide2: mondaySide2 ?? mondaySide2,
      tuesdayMain: tuesdayMain ?? tuesdayMain,
      tuesdaySide1: tuesdaySide1 ?? tuesdaySide1,
      tuesdaySide2: tuesdaySide2 ?? tuesdaySide2,
      wednesdayMain: wednesdayMain ?? wednesdayMain,
      wednesdaySide1: wednesdaySide1 ?? wednesdaySide1,
      wednesdaySide2: wednesdaySide2 ?? wednesdaySide2,
      thursdayMain: thursdayMain ?? thursdayMain,
      thursdaySide1: thursdaySide1 ?? thursdaySide1,
      thursdaySide2: thursdaySide2 ?? thursdaySide2,
      fridayMain: fridayMain ?? fridayMain,
      fridaySide1: fridaySide1 ?? fridaySide1,
      fridaySide2: fridaySide2 ?? fridaySide2,
      saturdayMain: saturdayMain ?? saturdayMain,
      saturdaySide1: saturdaySide1 ?? saturdaySide1,
      saturdaySide2: saturdaySide2 ?? saturdaySide2,
      sundayMain: sundayMain ?? sundayMain,
      sundaySide1: sundaySide1 ?? sundaySide1,
      sundaySide2: sundaySide2 ?? sundaySide2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
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
    };
  }
}
