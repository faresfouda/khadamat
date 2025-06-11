import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const primary = Color(0xFF37928B);
  static const grey = Color(0xFF969696);
  static const darkGrey = Color(0xFFA1A1A1);
  static const whitecolor = Color(0xFFF5F5F5);
  static const blackcolor = Color(0xFF151515);
}

ThemeData apptheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: GoogleFonts.almarai(
          fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary),
      backgroundColor: AppColors.whitecolor,
      toolbarHeight: 100,
    ),
    scaffoldBackgroundColor: AppColors.whitecolor,
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(
          AppColors.primary,
        ),
        minimumSize: const WidgetStatePropertyAll(
          Size(340, 55),
        ),
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.almarai(
              color: AppColors.whitecolor,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ),
    iconButtonTheme: const IconButtonThemeData(
        style:
            ButtonStyle(iconColor: WidgetStatePropertyAll(AppColors.primary))));
