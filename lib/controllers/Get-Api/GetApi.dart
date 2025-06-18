import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Getapi extends GetxController {
  GlobalKey<FormState> signinFormKey = GlobalKey();
  //sign in Email
  TextEditingController signinEmailController = TextEditingController();
  //sign in phonenumber
  TextEditingController signinPhoneNumberController = TextEditingController();
  //sign in password
  TextEditingController signinPasswordController = TextEditingController();
  //sign up name
  TextEditingController signupNameController = TextEditingController();
  //sign up email
  TextEditingController signupEmailController = TextEditingController();
  //sign up password
  TextEditingController signupPasswordController = TextEditingController();
   //sign up confirm password
  TextEditingController signupConfirmPasswordController = TextEditingController();
}
