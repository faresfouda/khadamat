import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/CustomtextField.dart';
import 'package:khadamat/controllers/Get_encryptedPassword.dart';
import 'package:khadamat/components/SignView.dart';
import 'package:khadamat/controllers/AuthController.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/home/mainscreen.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final Getencryptedpassword getencryptedpassword =
      Get.put(Getencryptedpassword(), permanent: false);
  AuthController authController = Get.find<AuthController>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SignView(
      screentitle: 'تسجيل الدخول',
      iconchild: null,
      Logo: 'assets/sign/signin.svg',
      Child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Customtextfield(
            textfield_title: 'البريد الالكتروني او رقم الهاتف',
            hint_text: 'ادخل البريد الالكتروني او رقم الهاتف',
            obscureText: false,
            controller: emailController,
            backicon: null,
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
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
              obscureText: getencryptedpassword.obscureText.value,
              controller: passwordController,
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
          Obx(() {
            return authController.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : FilledButton(
                    onPressed: SignInButton,
                    child: const Text(
                      'تسجيل الدخول',
                    ),
                  );
          }),
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
                  style: GoogleFonts.almarai(
                      color: AppColors.darkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
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
                      color: AppColors.primary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void SignInButton() async {
            final email = emailController.text.trim();
            final password = passwordController.text.trim();
  
            if (email.isEmpty || password.isEmpty) {
              Get.snackbar('خطأ', 'يرجى إدخال البريد وكلمة المرور');
              return;
            }
  
            try {
              await authController.login(email, password);
              Get.offAll(() => const MainScreen());
            } catch (e) {
              authController.isLoading.value = false;
              Get.snackbar('فشل تسجيل الدخول', e.toString(),
                  snackPosition: SnackPosition.BOTTOM);
            }
          }
}

