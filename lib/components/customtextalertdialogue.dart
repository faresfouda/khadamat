import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/elevatedButton.dart';

void CustomTextAlertDialogue(BuildContext context,final int? fillcolor,final int? bordercolor,
    final VoidCallback? onpressed,
    {required String title,
    required String buttontext,}) {
  showDialog(
    context: context,
    builder: (context) {
      return Transform.translate(
        offset: const Offset(0, -30),
        child: AlertDialog(
          icon: GestureDetector(
            child: SvgPicture.asset(
              'assets/icons/close-circle.svg',
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          iconPadding: const EdgeInsets.only(top: 16.83, left: 220),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title:  Text(
            title,
            style: GoogleFonts.tajawal(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          actions: [
            Column(
              children: [
                if (fillcolor == 0xFFE83636)
                  Column(
                    children: [
                      SizedBox(
                        width: 216,
                        child: Text(
                          'إذا قمت بحذف الحساب سوف يتم حذف جميع بيانتك!',
                          style: GoogleFonts.tajawal(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF969696),
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                    ],
                  ),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: buttontext,
                    fontsize: 14,
                    radius: 10,
                    fillcolor: fillcolor?? 0xFF37928B,
                    bordercolor: bordercolor?? 0xFF37928B,
                    onpressed: onpressed,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: 'إلغاء',
                    fontsize: 14,
                    radius: 10,
                    fillcolor: 0xFFFFFFFF,
                    textcolor: const Color(0xFF37928B),
                    onpressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
