import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({
    super.key, required this.iconData, required this.title,
  });
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFFE8E8E8),
          child: Icon(
         iconData,
            color: const Color(0xFF37928B),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
           title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000)),
          ),
        )
      ],
    );
  }
}
