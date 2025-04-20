import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/Custom_SigntextField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/SignView.dart';

class Signin extends StatelessWidget {
  Signin({super.key});
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return SignView(
      screentitle: 'تسجيل الدخول',
      iconchild: null,
      Logo: 'assets/login.png',
      Child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomSigntextfield(
            textfield_title: 'البريد الالكتروني او رقم الهاتف',
            hint_text: 'ادخل البريد الالكتروني او رقم الهاتف',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'هل نسيت كلمة السر ؟',
                    style: TextStyle(
                        color: Color(0xFF4ECDC4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: const Color(0xFF4ECDC4),
            onPressed: () {
              Get.offAllNamed('home');
            },
            height: 60,
            minWidth: 342,
            child: const Text(
              'تسجيل الدخول',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 95,
                child: Divider(
                  endIndent: 5,
                ),
              ),
              Text('او يمكنك التسجيل عبر',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFC0C0C0))),
              SizedBox(
                width: 95,
                child: Divider(
                  indent: 5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/Apple.png'),
              ),
              SizedBox(
                width: 24,
              ),
              Image(
                image: AssetImage('assets/Google.png'),
              ),
              SizedBox(
                width: 24,
              ),
              Image(
                image: AssetImage('assets/FaceBook.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'ليس لديك حساب؟ ',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('signup');
                },
                child: const Text(
                  ' أنشئ حساب جديد',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF4ECDC4)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
