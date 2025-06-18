import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/workerprofile/widget/contactinfo.dart';
import 'package:khadamat/views/workerprofile/widget/personalinfo.dart';

class Aboutworker extends StatelessWidget {
  const Aboutworker({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InfoTitle(
            iconData: Icons.person,
            title: 'المعلومات الشخصية',
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            children: [
              ContactInfo(
                iconData: Icons.location_on_rounded,
                info: 'المنصورة',
              ),
              SizedBox(
                width: 20,
              ),
              ContactInfo(
                iconData: Icons.phone_enabled_rounded,
                info: '01014480174',
              )
            ],
          ),
          const ContactInfo(iconData: Icons.mail, info: 'KamalHamza@gmail.com'),
          const SizedBox(
            height: 20,
          ),
          const InfoTitle(
              iconData: Icons.shopping_bag_rounded, title: 'الخبرات '),
          const SizedBox(
            height: 8,
          ),
          Text(
            'خريج المدرسة الصناعية قسم كهرباء .',
            style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF666666)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'أملك خبرة 15 سنة في مجال الكهرباء والتوصيلات.',
            style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF666666)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'أملك خبرة 15 سنة في مجال الكهرباء والتوصيلات.',
            style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF666666)),
          ),
          // const ConfirmButton()
        ],
      ),
    );
  }
}
