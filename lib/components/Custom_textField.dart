import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.textfield_title,
    required this.hint_text,
    required this.field_icon,
    required this.obscureText,
    required this.onsubmit,
  });
  final String textfield_title;
  final String hint_text;
  final IconButton? field_icon;
  final bool obscureText;
  Function(String value) onsubmit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(textfield_title,
                  style: Theme.of(context).textTheme.titleMedium),
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
              onFieldSubmitted: onsubmit,
              decoration: InputDecoration(
                suffixIcon: field_icon,
                filled: true,
                fillColor: Colors.white,
                hintText: hint_text,
                hintStyle: Theme.of(context).textTheme.labelSmall,
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
