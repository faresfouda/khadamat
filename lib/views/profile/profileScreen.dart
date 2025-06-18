import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/customtextalertdialogue.dart';
import 'package:khadamat/controllers/home_controller.dart';
import 'package:khadamat/controllers/user_controller.dart';
import 'package:khadamat/views/profile/contactus.dart';
import 'package:khadamat/views/profile/editprofile.dart';
import 'package:khadamat/views/profile/termsofuse.dart';
import 'package:khadamat/views/profile/widgets/customlisttile.dart';
import 'package:khadamat/views/profile/widgets/customswitchbutton.dart';
import 'package:khadamat/views/profile/widgets/customtextbutton.dart';
import 'package:share_plus/share_plus.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AuthController_1 authController = Get.find<AuthController_1>();
  UserController userController = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/worker/workerinfobackground.png',
            fit:BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 16, right: 16, bottom: 11),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFE8E8E8),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 153),
                child: Container(
                  child: Column(
                    children: [
                      CustomListTile(
                        title: 'الملف الشخصي',
                        ontap: () {
                          Get.to(() => EditProfileScreen());
                        },
                      ),
                      CustomSwitchButton(),
                      CustomListTile(
                        title: 'سياسة الاستخدام',
                        ontap: () {
                          Get.to(() => TermsOfUse());
                        },
                      ),
                      CustomListTile(
                        title: 'تواصل معنا',
                        ontap: () {
                          Get.to(() => ContactUs());
                        },
                      ),
                      CustomTextButton(
                        title: 'مشاركة البرنامج',
                        color: Colors.black,
                        onTap: () {
                          Share.share('قم بمشاركة التطبيق على أي من التطبيقات التالية ');
                        },
                      ),
                      // CustomTextButton(title: 'تغيير اللغة',color: Colors.black,),
                      CustomTextButton(
                        title: 'تسجيل الخروج',
                        color: Colors.red,
                        onTap: () {
                          CustomTextAlertDialogue(
                            context,
                            0xFF37928B,
                            0xFF37928B,
                            () {
                              authController.logout();
                              Get.offAllNamed('signin');
                            },
                            title: 'هل أنت متأكد من تسجيل الخروج ؟',
                            buttontext: 'تسجيل الخروج',
                          );
                        },
                      ),
                      CustomTextButton(title: 'حذف الحساب',color: Colors.red,
                        onTap:(){
                          CustomTextAlertDialogue(
                            context,
                            0xFFE83636,
                            0xFFE83636,
                            () {
                              authController.logout();
                              Get.offAllNamed('signin');
                            },
                            title: 'هل أنت متأكد من تسجيل الخروج ؟',
                            buttontext: 'حذف الحساب',
                          );
                        } ,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 89, left: 48, right: 48),
            child: Container(
              height: 180,
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile_pic.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    userController.user.value?.name ?? 'مستخدم',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFFAFAFA),
    );
  }
}
