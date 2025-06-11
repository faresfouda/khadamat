import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GetIntro extends GetxController {
  Map<String, dynamic> IntroData = {
    'assets/intro/intro1.svg': [
      'خدمات شاملة',
      'سوف تجد هنا جميع الخدمات التي قد نحتاج إليها في إصلاح اعطال منزلك !'
    ],
    'assets/intro/intro2.svg': [
      'سريع ومريح!',
      'تستطيع العثور على العامل الأقرب لك  وأنت في منزلك بكل سهولة وسرعة !'
    ],
    'assets/intro/intro3.svg': [
      'خدمة آمنة',
      '''يحرص تطبيق مستر فِكس على توفير خدمات آمنة 
      من خلال عمالة موثوقة ومضمونة !'''
    ]
  };
  PageController pageController = PageController();
  RxBool isLastpage = false.obs;
  void skip() {
    pageController.nextPage(
        duration: (const Duration(seconds: 1)), curve: Curves.easeIn);
    if (pageController.page! + 1 == IntroData.length) {
      isLastpage.value = true;
      Get.offAllNamed('signin');
    } else {
      isLastpage.value = false;
    }
  }
}
