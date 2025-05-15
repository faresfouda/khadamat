import 'package:get/get.dart';

class Radiocontroller extends GetxController {
  var dates =
      ['10:00-11:00AM', '11:30-1:00PM', '1:30-3:00PM', '3:30-5:00PM'].obs;
  var selected = ''.obs;
  onchanged( val) {
    selected.value = val!;
  }
}
