import 'package:get/get.dart';
import 'package:khadamat/controllers/DateController.dart';
import 'package:khadamat/controllers/Get_intro.dart';
import 'package:khadamat/controllers/RadioController.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetIntro());
    Get.put(Datecontroller());
    Get.put(Radiocontroller());
  }
}
