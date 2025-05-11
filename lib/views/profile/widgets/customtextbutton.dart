import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title ;
  final Color color;
  final Function()? onTap;
  const CustomTextButton({super.key, required this.title, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
