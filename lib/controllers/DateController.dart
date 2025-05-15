import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class Datecontroller extends GetxController {
  var focusedday = DateTime.now().obs;
  var firstday = DateTime.utc(2025).obs;
  var lastday = DateTime.utc(2030).obs;
  bool selectedDayPredicate(DateTime day) {
    return isSameDay(day, focusedday.value);
  }
  void onDaySelected(DateTime day, DateTime focusedDay) {
    focusedday.value = day;
  }
}
