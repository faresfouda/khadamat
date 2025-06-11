import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/theme/apptheme.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.ontap});
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      //  () {
      //   Get.toNamed('/search');
      // },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFFE8E8E8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/search-normal.svg',
            ),
            const SizedBox(width: 8),
            Text(
              'بحث',
              style: GoogleFonts.almarai(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.darkGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
