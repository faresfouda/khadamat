import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/Get_Binding/My_Binding.dart';
import 'package:khadamat/Screens/Intro_Screen.dart';

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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.almaraiTextTheme(),
      ),
      initialBinding: MyBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => IntroScreen()),
      ],
    );
  }
}
