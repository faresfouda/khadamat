import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/CustomtextField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/SignView.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/home/mainscreen.dart';

class Signin extends StatelessWidget {
  Signin({super.key});
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return SignView(
      screentitle: 'تسجيل الدخول',
      iconchild: null,
      Logo: 'assets/sign/signin.svg',
      Child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Customtextfield(
            textfield_title: 'البريد الالكتروني او رقم الهاتف',
            hint_text: 'ادخل البريد الالكتروني او رقم الهاتف',
            backicon: null,
            obscureText: false,
            color: Colors.transparent,
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
                    : const Icon(Icons.visibility, color: AppColors.darkGrey),
              ),
              obscureText: getencryptedpassword.obscureText.value,
              color: Colors.transparent,
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
                      style: GoogleFonts.almarai(
                          color: AppColors.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
          FilledButton(
              onPressed: () {
                Get.off(const MainScreen());
              },
              child: const Text(
                'تسجيل الدخول',
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
                  color: AppColors.darkGrey,
                  endIndent: 5,
                ),
              ),
              Text('او يمكنك التسجيل عبر',
                  style: GoogleFonts.almarai(
                      color: AppColors.darkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                width: 95,
                child: Divider(
                  color: AppColors.darkGrey,
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
              Text(
                'ليس لديك حساب؟ ',
                style: GoogleFonts.almarai(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackcolor),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('signup');
                },
                child: Text(
                  ' أنشئ حساب جديد',
                  style: GoogleFonts.almarai(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
