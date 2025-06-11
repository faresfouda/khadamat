import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/customalertdialogue.dart';
import 'package:khadamat/theme/apptheme.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: FilledButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          onPressed: () {
            showCustomAlertDialog(
              context,
              'تم نأكيد الطلب بنجاح',
            );
            // showDialog(
            //     context: context,
            //     builder: (context) {
            //       return AlertDialog(
            //         title: Column(
            //           children: [
            //             Image.asset('assets/Alert/Done.png'),
            //             const SizedBox(
            //               height: 12,
            //             ),
            //             Text('تم نأكيد الطلب بنجاح',
            //                 style: GoogleFonts.tajawal(
            //                     color: AppColors.primary,
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w700)),
            //           ],
            //         ),
            //       );
            //     });
          },
          child: Text('تأكيد الطلب',
              style: GoogleFonts.tajawal(
                  color: AppColors.whitecolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700))),
    );
  }
}
