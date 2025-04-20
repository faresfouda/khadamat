import 'package:flutter/material.dart';

class SubtitleIntro extends StatelessWidget {
  const SubtitleIntro({super.key, required this.SubTitle});
  final String SubTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
          textAlign: TextAlign.center,
          SubTitle,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)),
    );
  }
}
