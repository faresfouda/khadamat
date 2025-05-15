import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData apptheme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: GoogleFonts.almarai(
            color: const Color(0xFF37928B),
            fontSize: 20,
            fontWeight: FontWeight.w700)),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.almaraiTextTheme(
      const TextTheme(
          titleLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color(0xFF37928B)),
          titleMedium: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF0B0B0B)),
          titleSmall: TextStyle(
              color: Color(0xFF37928B),
              fontSize: 12,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          bodySmall: TextStyle(
              color: Color(0xFF37928B),
              fontSize: 20,
              fontWeight: FontWeight.w700),
          labelLarge: TextStyle(
              color: Color(0xFF37928B),
              fontSize: 24,
              fontWeight: FontWeight.w700),
          labelSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF969696)),
          labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF37928B))),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(
          Color(0xFF37928B),
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
        style: ButtonStyle(
            iconSize: WidgetStatePropertyAll(30),
            iconColor: WidgetStatePropertyAll(Color(0xFF37928B)))));
