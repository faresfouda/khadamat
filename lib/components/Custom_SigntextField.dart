import 'package:flutter/material.dart';

class CustomSigntextfield extends StatelessWidget {
  const CustomSigntextfield({
    super.key,
    required this.textfield_title,
    required this.hint_text,
    required this.field_icon, required this.obscureText,
  });
  final String textfield_title;
  final String hint_text;
  final IconButton? field_icon;
  final bool obscureText;

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                textfield_title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: TextFormField(
              obscureText: obscureText,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                suffixIcon: field_icon,
                filled: true,
                fillColor: Colors.white,
                hintText: hint_text,
                hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC0C0C0)),
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
