import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Back_Button extends StatelessWidget {
  final Color color;
  const Back_Button({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        'assets/icons/chevron-right.svg',
        color: color,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}