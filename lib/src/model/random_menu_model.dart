class RandomMenuData {
  final String? mondayvalue;
  final String? mondayvalue1;
  final String? mondayvalue2;
// 월요일 랜덤 메뉴
  final String? tuesdayvalue;
  final String? tuesdayvalue1;
  final String? tuesdayvalue2;
// 화요일 랜덤 메뉴
  final String? wednesdayvalue;
  final String? wednesdayvalue1;
  final String? wednesdayvalue2;
// 수요일 랜덤 메뉴
  final String? thursdayvalue;
  final String? thursdayvalue1;
  final String? thursdayvalue2;
// 목요일 랜덤 메뉴
  final String? fridayvalue;
  final String? fridayvalue1;
  final String? fridayvalue2;
// 금요일 랜덤 메뉴
  final String? saturdayvalue;
  final String? saturdayvalue1;
  final String? saturdayvalue2;
// 토요일 랜덤 메뉴
  final String? sundayvalue;
  final String? sundayvalue1;
  final String? sundayvalue2;
// 일요일 랜덤 메뉴

  RandomMenuData({
    this.mondayvalue,
    this.mondayvalue1,
    this.mondayvalue2,
    this.tuesdayvalue,
    this.tuesdayvalue1,
    this.tuesdayvalue2,
    this.wednesdayvalue,
    this.wednesdayvalue1,
    this.wednesdayvalue2,
    this.thursdayvalue,
    this.thursdayvalue1,
    this.thursdayvalue2,
    this.fridayvalue,
    this.fridayvalue1,
    this.fridayvalue2,
    this.saturdayvalue,
    this.saturdayvalue1,
    this.saturdayvalue2,
    this.sundayvalue,
    this.sundayvalue1,
    this.sundayvalue2,
  });

  factory RandomMenuData.init() {
    return RandomMenuData(
      mondayvalue: '',
      mondayvalue1: '',
      mondayvalue2: '',
      tuesdayvalue: '',
      tuesdayvalue1: '',
      tuesdayvalue2: '',
      wednesdayvalue: '',
      wednesdayvalue1: '',
      wednesdayvalue2: '',
      thursdayvalue: '',
      thursdayvalue1: '',
      thursdayvalue2: '',
      fridayvalue: '',
      fridayvalue1: '',
      fridayvalue2: '',
      saturdayvalue: '',
      saturdayvalue1: '',
      saturdayvalue2: '',
      sundayvalue: '',
      sundayvalue1: '',
      sundayvalue2: '',
    );
  }
  factory RandomMenuData.fromJson(String docId, Map<String, dynamic> json) {
    return RandomMenuData(
      mondayvalue: json['mondayMain'] ?? '',
      mondayvalue1: json['mondaySide1'] ?? '',
      mondayvalue2: json['mondaySide2'] ?? '',
      tuesdayvalue: json['tuesdayMain'] ?? '',
      tuesdayvalue1: json['tuesdaySide1'] ?? '',
      tuesdayvalue2: json['tuesdaySide2'] ?? '',
      wednesdayvalue: json['wednesdayMain'] ?? '',
      wednesdayvalue1: json['wednesdaySide1'] ?? '',
      wednesdayvalue2: json['wednesdaySide2'] ?? '',
      thursdayvalue: json['thursdayMain'] ?? '',
      thursdayvalue1: json['thursdaySide1'] ?? '',
      thursdayvalue2: json['thursdaySide2'] ?? '',
      fridayvalue: json['fridayMain'] ?? '',
      fridayvalue1: json['fridaySide1'] ?? '',
      fridayvalue2: json['fridaySide2'] ?? '',
      saturdayvalue: json['saturdayMain'] ?? '',
      saturdayvalue1: json['saturdaySide1'] ?? '',
      saturdayvalue2: json['saturdaySide2'] ?? '',
      sundayvalue: json['sundayMain'] ?? '',
      sundayvalue1: json['sundaySide1'] ?? '',
      sundayvalue2: json['sundaySide2'] ?? '',
    );
  }

  RandomMenuData copyWith({
    String? mondayvalue,
    String? mondayvalue1,
    String? mondayvalue2,
    String? tuesdayvalue,
    String? tuesdayvalue1,
    String? tuesdayvalue2,
    String? wednesdayvalue,
    String? wednesdayvalue1,
    String? wednesdayvalue2,
    String? thursdayvalue,
    String? thursdayvalue1,
    String? thursdayvalue2,
    String? fridayvalue,
    String? fridayvalue1,
    String? fridayvalue2,
    String? saturdayvalue,
    String? saturdayvalue1,
    String? saturdayvalue2,
    String? sundayvalue,
    String? sundayvalue1,
    String? sundayvalue2,
  }) {
    return RandomMenuData(
      mondayvalue: mondayvalue ?? mondayvalue,
      mondayvalue1: mondayvalue1 ?? mondayvalue1,
      mondayvalue2: mondayvalue2 ?? mondayvalue2,
      tuesdayvalue: tuesdayvalue ?? tuesdayvalue,
      tuesdayvalue1: tuesdayvalue1 ?? tuesdayvalue1,
      tuesdayvalue2: tuesdayvalue2 ?? tuesdayvalue2,
      wednesdayvalue: wednesdayvalue ?? wednesdayvalue,
      wednesdayvalue1: wednesdayvalue1 ?? wednesdayvalue1,
      wednesdayvalue2: wednesdayvalue2 ?? wednesdayvalue2,
      thursdayvalue: thursdayvalue ?? thursdayvalue,
      thursdayvalue1: thursdayvalue1 ?? thursdayvalue1,
      thursdayvalue2: thursdayvalue2 ?? thursdayvalue2,
      fridayvalue: fridayvalue ?? fridayvalue,
      fridayvalue1: fridayvalue1 ?? fridayvalue1,
      fridayvalue2: fridayvalue2 ?? fridayvalue2,
      saturdayvalue: saturdayvalue ?? saturdayvalue,
      saturdayvalue1: saturdayvalue1 ?? saturdayvalue1,
      saturdayvalue2: saturdayvalue2 ?? saturdayvalue2,
      sundayvalue: sundayvalue ?? sundayvalue,
      sundayvalue1: sundayvalue1 ?? sundayvalue1,
      sundayvalue2: sundayvalue2 ?? sundayvalue2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mondayvalue': mondayvalue,
      'mondayvalue1': mondayvalue1,
      'mondayvalue2': mondayvalue2,
      'tuesdayvalue': tuesdayvalue,
      'tuesdayvalue1': tuesdayvalue1,
      'tuesdayvalue2': tuesdayvalue2,
      'wednesdayvalue': wednesdayvalue,
      'wednesdayvalue1': wednesdayvalue1,
      'wednesdayvalue2': wednesdayvalue2,
      'thursdayvalue': thursdayvalue,
      'thursdayvalue1': thursdayvalue1,
      'thursdayvalue2': thursdayvalue2,
      'fridayvalue': fridayvalue,
      'fridayvalue1': fridayvalue1,
      'fridayvalue2': fridayvalue2,
      'saturdayvalue': saturdayvalue,
      'saturdayvalue1': saturdayvalue1,
      'saturdayvalue2': saturdayvalue2,
      'sundayvalue': sundayvalue,
      'sundayvalue1': sundayvalue1,
      'sundayvalue2': sundayvalue2,
    };
  }
}
