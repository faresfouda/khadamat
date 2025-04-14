import 'package:get/get.dart';
import 'package:khadamat/Get/Get_intro.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetIntro());
  }
}
