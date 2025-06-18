import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/CustomtextField.dart';
import 'package:khadamat/controllers/AuthController.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/SignView.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/home/mainscreen.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword());
  final AuthController authController = Get.find<AuthController>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
              Customtextfield(
                textfield_title: 'اسم المستخدم',
                hint_text: 'ادخل اسمك الثنائي',
                backicon: null,
                obscureText: false,
                color: Colors.transparent,
                controller: nameController,
              ),
              Customtextfield(
                textfield_title: 'البريد الإلكتروني أو رقم الهاتف',
                hint_text: 'أدخل البريد الإلكتروني أو رقم الهاتف',
                backicon: null,
                obscureText: false,
                color: Colors.transparent,
                controller: emailController,
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
                    obscureText: getencryptedpassword.obscureText.value,
                    color: Colors.transparent,
                    controller: passwordController),
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
                  controller: confirmPasswordController,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FilledButton(
                  onPressed: SignUpButton,
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

  void SignUpButton() async {
                  final name = nameController.text;
                  final email = emailController.text.trim();
                  final password = passwordController.text.trim();
                  final confirmpassword =
                      confirmPasswordController.text.trim();
                  if (confirmpassword != password ||
                      confirmpassword.isEmpty) {
                    Get.snackbar("خطأ", 'يرجى تأكيد كلمة المرور');
                  }
                  if (email.isEmpty ||
                      password.isEmpty ||
                      name.isEmpty ||
                      confirmpassword.isEmpty) {
                    Get.snackbar('خطأ', 'يرجى إدخال البريد وكلمة المرور');
                    return;
                  }
                  try {
                    await authController.register(
                        name, email, password, confirmpassword);
                    Get.offAll(() => const MainScreen());
                  } catch (e) {
                    authController.isLoading.value = false;
                    Get.snackbar('فشل تسجيل الدخول',
                        'يوجد بالفعل مستخدم مسجل بهذا البريد الإلكتروني أو رقم الهاتف',
                        snackPosition: SnackPosition.BOTTOM);
                  }
                }
}
