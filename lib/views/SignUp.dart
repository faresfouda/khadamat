import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/Custom_SigntextField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/SignView.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SignView(
        screentitle: 'إنشاء حساب جديد ',
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
              const SizedBox(
                height: 8,
              ),
              const CustomSigntextfield(
                textfield_title: 'اسم المستخدم',
                hint_text: 'ادخل اسمك الثنائي',
                field_icon: null,
                obscureText: false,
              ),
              const CustomSigntextfield(
                textfield_title: 'البريد الإلكتروني أو رقم الهاتف',
                hint_text: 'أدخل البريد الإلكتروني أو رقم الهاتف',
                field_icon: null,
                obscureText: false,
              ),
              Obx(
                () => CustomSigntextfield(
                  textfield_title: 'كلمة المرور',
                  hint_text: 'أدخل كلمة المرور',
                  field_icon: IconButton(
                    onPressed: () {
                      getencryptedpassword.secure();
                    },
                    icon: getencryptedpassword.obscureText.value
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  obscureText: getencryptedpassword.obscureText.value,
                ),
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
              Obx(
                () => CustomSigntextfield(
                  textfield_title: 'تأكيد كلمة المرور',
                  hint_text: 'أعد إدخال كلمة المرور',
                  field_icon: IconButton(
                    onPressed: () {
                      getencryptedpassword.secure();
                    },
                    icon: getencryptedpassword.obscureText.value
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  obscureText: getencryptedpassword.obscureText.value,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: const Color(0xFF4ECDC4),
                onPressed: () {
                  Get.offAllNamed('home');
                },
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
      ),
    );
  }
}
