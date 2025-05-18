import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/Custom_textField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/generalview.dart';

class Signin extends StatelessWidget {
  Signin({super.key});
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return GeneralView(
      screentitle: Container(
        child: Center(
          child: Text(
            'تسجيل الدخول',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
      iconchild: null,
      ScreenImage: const Image(
        image: AssetImage('assets/login.png'),
      ),
      ScreenContent: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTextField(
            textfield_title: 'البريد الالكتروني او رقم الهاتف',
            hint_text: 'ادخل البريد الالكتروني او رقم الهاتف',
            field_icon: null,
            obscureText: false,
            onsubmit: (String value) {},
          ),
          Obx(
            () => CustomTextField(
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
              onsubmit: (String value) {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: TextButton(
                  onPressed: () {},
                  child: Text('هل نسيت كلمة السر ؟',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
          FilledButton(
              onPressed: () {
                Get.offAllNamed('home');
              },
              child: Text(
                'تسجيل الدخول',
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 95,
                child: Divider(
                  endIndent: 5,
                ),
              ),
              Text('او يمكنك التسجيل عبر',
                  style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(
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
      image: 'assets/background.png',
      scaffoldcolor: const Color(0xFFE6F0FC),
    );
  }
}
