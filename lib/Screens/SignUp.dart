import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:khadamat/Custom_intro_text/Custom_SigntextField.dart';
import 'package:khadamat/widgets/SignView.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SignView(
      iconchild: IconButton(
          onPressed: () {
            Get.offAllNamed('signin');
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF4ECDC4),
          )),
      Logo: 'assets/SignUp.png',
      Child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'إنشاء حساب جديد ',
              style: TextStyle(
                  color: Color(0xFF4ECDC4),
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomSigntextfield(
              textfield_title: 'اسم المستخدم',
              hint_text: 'ادخل اسمك الثنائي',
              field_icon: null,
            ),
            const CustomSigntextfield(
              textfield_title: 'البريد الإلكتروني أو رقم الهاتف',
              hint_text: 'أدخل البريد الإلكتروني أو رقم الهاتف',
              field_icon: null,
            ),
            const CustomSigntextfield(
              textfield_title: 'كلمة المرور',
              hint_text: 'أدخل كلمة المرور',
              field_icon: Icon(Icons.remove_red_eye_outlined),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 16, bottom: 8),
                  child: Text(
                    'أنشئ كلمة مرور تحتوي على حروف وأرقام ورموز ',
                    style: TextStyle(
                        color: Color(0xFF4ECDC4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const CustomSigntextfield(
                textfield_title: 'تأكيد كلمة المرور',
                hint_text: 'أعد إدخال كلمة المرور',
                field_icon: Icon(Icons.remove_red_eye_outlined)),
            const SizedBox(
              height: 8,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: const Color(0xFF4ECDC4),
              onPressed: () {},
              height: 60,
              minWidth: 342,
              child: const Text(
                'إنشاء حساب',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
