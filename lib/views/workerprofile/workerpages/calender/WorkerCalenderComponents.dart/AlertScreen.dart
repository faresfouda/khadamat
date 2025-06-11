import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          const Image(image: AssetImage('assets/Alert/Done.png')),
          const SizedBox(
            height: 8,
          ),
          Text(
            'تمت عملية الطلب بنجاح !',
            style: GoogleFonts.tajawal(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF37928B)),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              FilledButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(126, 38),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'تفاصيل الطلب',
                    style: GoogleFonts.tajawal(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                width: 3,
              ),
              FilledButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                    side: const WidgetStatePropertyAll(
                        BorderSide(color: Color(0xFF37928B), width: 1)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(126, 38),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'الرئيسية',
                    style: GoogleFonts.tajawal(
                        color: const Color(0xFF37928B),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
