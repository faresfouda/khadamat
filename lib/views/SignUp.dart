import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/CustomtextField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/SignView.dart';
import 'package:khadamat/theme/apptheme.dart';

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
            style: Theme.of(context).iconButtonTheme.style,
            onPressed: () {
              Get.offAllNamed('signin');
            },
            icon: const Icon(
              Icons.arrow_back_sharp,
            )),
        Logo: 'assets/sign/signup.svg',
        Child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Customtextfield(
                textfield_title: 'اسم المستخدم',
                hint_text: 'ادخل اسمك الثنائي',
                backicon: null,
                obscureText: false, color: Colors.transparent,
              ),
              const Customtextfield(
                textfield_title: 'البريد الإلكتروني أو رقم الهاتف',
                hint_text: 'أدخل البريد الإلكتروني أو رقم الهاتف',
                backicon: null,
                obscureText: false, color: Colors.transparent,
              ),
              Obx(
                () => Customtextfield(
                  textfield_title: 'كلمة المرور',
                  hint_text: 'أدخل كلمة المرور',
                  backicon: IconButton(
                    onPressed: () {
                      getencryptedpassword.secure();
                    },
                    icon: getencryptedpassword.obscureText.value
                        ? const Icon(
                            Icons.visibility_off,
                            color: AppColors.darkGrey,
                          )
                        : const Icon(Icons.visibility,
                            color: AppColors.darkGrey),
                  ),
                  obscureText: getencryptedpassword.obscureText.value, color: Colors.transparent,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 8),
                    child: Text(
                      'أنشئ كلمة مرور تحتوي على حروف وأرقام ورموز ',
                      style: GoogleFonts.almarai(
                          color: AppColors.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Customtextfield(
                  textfield_title: 'تأكيد كلمة المرور',
                  hint_text: 'أعد إدخال كلمة المرور',
                  backicon: IconButton(
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
                  color: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FilledButton(
                  onPressed: () {
                    Get.offAllNamed('workermap');
                  },
                  style: Theme.of(context).filledButtonTheme.style,
                  child: const Text(
                    'إنشاء حساب',
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
