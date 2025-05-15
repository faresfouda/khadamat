import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/component/Custom_textField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/component/generalview.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GeneralView(
        screentitle: Container(
          child: Center(
            child: Text(
              'انشاء حساب جديد',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
        iconchild: IconButton(
            style: Theme.of(context).iconButtonTheme.style,
            onPressed: () {
              Get.offAllNamed('signin');
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
            )),
        ScreenImage: const Image(
          image: AssetImage('assets/login.png'),
        ),
        ScreenContent: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                textfield_title: 'اسم المستخدم',
                hint_text: 'ادخل اسمك الثنائي',
                field_icon: null,
                obscureText: false,
                onsubmit: (String value) {},
              ),
              CustomTextField(
                textfield_title: 'البريد الإلكتروني أو رقم الهاتف',
                hint_text: 'أدخل البريد الإلكتروني أو رقم الهاتف',
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
                        ? const Icon(
                            Icons.visibility_off,
                            color: Color(0xFFC0C0C0),
                          )
                        : const Icon(Icons.visibility,
                            color: Color(0xFFC0C0C0)),
                  ),
                  obscureText: getencryptedpassword.obscureText.value,
                  onsubmit: (String value) {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 8),
                    child: Text(
                      'أنشئ كلمة مرور تحتوي على حروف وأرقام ورموز ',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
              Obx(
                () => CustomTextField(
                  textfield_title: 'تأكيد كلمة المرور',
                  hint_text: 'أعد إدخال كلمة المرور',
                  field_icon: IconButton(
                    onPressed: () {
                      getencryptedpassword.secure();
                    },
                    icon: getencryptedpassword.obscureText.value
                        ? const Icon(Icons.visibility_off,
                            color: Color(0xFFC0C0C0))
                        : const Icon(Icons.visibility,
                            color: Color(0xFFC0C0C0)),
                  ),
                  obscureText: getencryptedpassword.obscureText.value,
                  onsubmit: (String value) {},
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FilledButton(
                  onPressed: () {
                    Get.offAllNamed('home');
                  },
                  style: Theme.of(context).filledButtonTheme.style,
                  child: Text(
                    'إنشاء حساب',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        image: 'assets/background.png',
        scaffoldcolor: const Color(0xFFE6F0FC),
      ),
    );
  }
}
