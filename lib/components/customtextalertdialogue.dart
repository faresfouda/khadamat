import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khadamat/components/elevatedButton.dart';

void CustomTextAlertDialogue(BuildContext context,final int? fillcolor,final int? bordercolor,
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
            style: TextStyle(
              fontSize: 14,
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
                      Container(
                        width: 216,
                        child: Text(
                          'إذا قمت بحذف الحساب سوف يتم حذف جميع بيانتك!',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF969696),
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                    ],
                  ),
                Container(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: buttontext,
                    fontsize: 14,
                    radius: 10,
                    fillcolor: fillcolor?? 0xFF37928B,
                    bordercolor: bordercolor?? 0xFF37928B,
                    onpressed: () {},
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: 'إلغاء',
                    fontsize: 14,
                    radius: 10,
                    fillcolor: 0xFFFFFFFF,
                    textcolor: Color(0xFF37928B),
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
