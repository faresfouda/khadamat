import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String icon_path;
  final bool isreadOnly;
  final String? initialValue;
  final String? hintText;
  const CustomTextField(
      {super.key,
      required this.icon_path,
      this.isreadOnly = false,
      this.initialValue,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFE8E8E8),
            width: 1,
          ),
        ),
        prefixIcon: Padding(
          padding:
              const EdgeInsets.only(left: 8, right: 13), // Adjust spacing here
          child: SvgPicture.asset(icon_path),
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 32,
          minHeight: 32,
        ),
        label: Text(
          hintText ?? '',
          style: GoogleFonts.tajawal(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF969696),
          ),
        ),
      ),
      readOnly: isreadOnly,
      initialValue: initialValue,
      style: GoogleFonts.tajawal(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF969696),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
    );
  }
}
