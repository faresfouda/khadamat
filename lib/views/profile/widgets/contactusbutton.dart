import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback? onTap;
  const ContactUsButton(
      {super.key, this.onTap, required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFE8E8E8),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 16, top: 12, bottom: 12),
                child: SvgPicture.asset(
                  iconPath,
                  color: const Color(0xFF37928B),
                ),
              ),
              Text(
                text,
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF37928B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
