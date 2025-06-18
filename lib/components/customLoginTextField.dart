import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/theme/apptheme.dart';

class Customlogintextfield extends StatelessWidget {
  const Customlogintextfield({
    super.key,
    required this.textfield_title,
    required this.hint_text,
    required this.backicon,
    required this.obscureText,
    required this.color, required this.controller,
  });
  final String textfield_title;
  final String hint_text;
  final IconButton? backicon;
  final Color color;
  final TextEditingController controller;

  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(textfield_title,
                  style: GoogleFonts.almarai(
                      color: AppColors.blackcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8, left: 8),
          child: TextFormField(
              obscureText: obscureText,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                suffixIcon: backicon,
                filled: true,
                fillColor: color,
                hintText: hint_text,
                hintStyle: GoogleFonts.almarai(
                    color: const Color(0xFF969696),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
                    borderRadius: BorderRadius.circular(16)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
                    borderRadius: BorderRadius.circular(16)),
              )),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
