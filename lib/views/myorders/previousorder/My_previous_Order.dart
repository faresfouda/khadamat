import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/myorders/currentorder/my_current_order.dart';

class MyPreviousOrder extends StatelessWidget {
  MyPreviousOrder({super.key});
  Map<String, String> orderdetails = {
    ' رقم الطلب:': '505234',
    'فئة الطلب:': 'أجهزة كهربائية. ',
    'عنوان الطلب :': 'تصليح غسالة أوتومايتك',
    'وصف أكثر للطلب :':
        '''بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوية أثناء الغسيل'''
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('طلباتي السابقة'),
          leading: const Back_Button(
            color: AppColors.primary,
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('تفاصيل الطلب ',
                style: GoogleFonts.tajawal(
                    color: const Color(0xFF37928B),
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: orderdetails.length,
                itemBuilder: (context, i) {
                  final key = orderdetails.keys.toList()[i];
                  final value = orderdetails.values.toList()[i];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: RichText(
                      text: TextSpan(
                        text: '$key ',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: const Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: value,
                            style: GoogleFonts.tajawal(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF666666),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              clipBehavior: Clip.antiAlias,
              child: Image(
                height: 180,
                width: 360,
                fit: BoxFit.cover,
                image: AssetImage('assets/currentorder/MyCurrentOrder.png'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFEDF8F2)),
                  child: Text('تم الإنتهاء',
                      style: GoogleFonts.tajawal(
                        color: const Color(0xFF47B881),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Text(
                  'PM 9:20 , 28/9/2024',
                  style: GoogleFonts.tajawal(
                      color: const Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            FilledButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFE83636)),
                    side: WidgetStatePropertyAll(
                        BorderSide(color: Color(0xFFE83636)))),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const DeleteOrder();
                      });
                },
                child: Text(
                  'حذف الطلب',
                  style: GoogleFonts.tajawal(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
