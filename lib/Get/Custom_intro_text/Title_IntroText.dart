import 'package:flutter/material.dart';

class TitleIntrotext extends StatelessWidget {
  const TitleIntrotext({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xFF4ECDC4)),
      ),
    );
  }
}
