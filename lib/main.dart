import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/Get_Binding/My_Binding.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/search/searchScreen.dart';
import 'package:khadamat/views/workermap.dart';
import 'package:khadamat/views/Intro_Screen.dart';
import 'package:khadamat/views/SignIn.dart';
import 'package:khadamat/views/SignUp.dart';

void main() {
  runApp(const MrFixApp());
}

class MrFixApp extends StatelessWidget {
  const MrFixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      theme: apptheme,
      initialBinding: MyBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => IntroScreen()),
        GetPage(
          name: '/signin',
          page: () => Signin(),
        ),
        GetPage(
          name: '/signup',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/workermap',
          page: () => const Workermap(),
        ),
        GetPage(
          name: '/search',
          page: () => const SearchScreen(),
        ),
      ],
    );
  }
}
