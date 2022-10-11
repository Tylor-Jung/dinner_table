import 'package:intl/intl.dart';

class DateDataFormat {
  String? getSystemTime() {
    var now = DateTime.now();
    return DateFormat('hh:mm a').format(now);
  }


}
