import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/home/homeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      theme: ThemeData(
        appBarTheme:AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.almaraiTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}

