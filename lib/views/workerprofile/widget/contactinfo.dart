import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
    required this.iconData,
    required this.info,
  });
  final IconData iconData;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            iconData,
            color: const Color(0xFF666666),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            info,
            style: GoogleFonts.tajawal(
                color: const Color(0xFF666666),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
