import 'package:get/get.dart';

class Getencryptedpassword extends GetxController {
  RxBool obscureText = false.obs;
  List<bool> password = [true, false];
  int i = 0;
  void secure() {
    if (i < password.length) {
      obscureText.value = password[i];
      i++;
      if (i >= password.length) {
      i = 0;
    }
    }   


  }
}
