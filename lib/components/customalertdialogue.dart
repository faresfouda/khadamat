import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showCustomAlertDialog(BuildContext context, String text) {
  showDialog(
    context: context,
    builder: (context) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pop();
      });
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 245),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/check.png'),
              const SizedBox(height: 16),
              Text(
                text,
                style: GoogleFonts.tajawal(
                    color: const Color(0xFF37928B),
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              )
            ],
          ),
        ),
      );
    },
  );
}
