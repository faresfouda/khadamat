import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetIntro extends GetxController {
  Map<String, dynamic> IntroData = {
    'assets/introOne.png': [
      'خدمات شاملة',
      'سوف تجد هنا جميع الخدمات التي قد نحتاج إليها في إصلاح اعطال منزلك !'
    ],
    'assets/IntroTwo.png': [
      'سريع ومريح!',
      'تستطيع العثور على العامل الأقرب لك  وأنت في منزلك بكل سهولة وسرعة !'
    ],
    'assets/introThree.png': [
      'خدمة آمنة',
      'يحرص تطبيق مستر فِكس على توفير خدمات آمنة  من خلال عمالة موثوقة ومضمونة !'
    ]
  };
  PageController pageController = PageController();
  void skip() {
    pageController.nextPage(
        duration: (const Duration(seconds: 1)), curve: Curves.easeIn);
  }
}
