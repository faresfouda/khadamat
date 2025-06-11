import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double fontsize;
  final double radius;
  final int fillcolor;
  final Color textcolor;
  final int bordercolor;
  final Function()? onpressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.fontsize,
    required this.radius,
    this.textcolor = Colors.white,
    this.fillcolor = 0xFF37928B,
    this.bordercolor = 0xFF37928B,
    this.onpressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(fillcolor),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(bordercolor),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.tajawal(
            fontSize: fontsize, color: textcolor, fontWeight: FontWeight.w700),
      ),
    );
  }
}
