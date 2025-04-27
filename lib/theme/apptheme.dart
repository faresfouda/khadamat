import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData apptheme = ThemeData(
  
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.almaraiTextTheme(
      const TextTheme(
          titleLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color(0xFF4ECDC4)),
          titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff151515)),
          titleSmall: TextStyle(
              color: Color(0xFF4ECDC4),
              fontSize: 12,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          bodySmall: TextStyle(
              color: Color(0xFF4ECDC4),
              fontSize: 20,
              fontWeight: FontWeight.w700),
          labelLarge: TextStyle(
              color: Color(0xFF4ECDC4),
              fontSize: 24,
              fontWeight: FontWeight.w700),
          labelSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFC0C0C0)),
          labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF4ECDC4))),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(
          Color(0xFF4ECDC4),
        ),
        minimumSize: const WidgetStatePropertyAll(
          Size(340, 55),
        ),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
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
            ButtonStyle(iconColor: WidgetStatePropertyAll(Color(0xFF4ECDC4)))));
