import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/views/MainScreen/myorders/currentorder/editorder/editorder.dart';

class MyCurrentOrder extends StatelessWidget {
  const MyCurrentOrder({
    super.key,
    required this.date,
    required this.orderadress,
  });
  final String date;
  final String orderadress;

  @override
  Widget build(BuildContext context) {
    Map<String, String> orderdetails = {
      ' رقم الطلب:': orderadress,
      'فئة الطلب:': 'أجهزة كهربائية. ',
      'عنوان الطلب :': 'تصليح غسالة أوتومايتك. ',
      'وصف أكثر للطلب :':
          '''بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوية أثناء الغسيل'''
    };
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(color: Colors.white,),
        title: const Text(
          'طلباتي الحالية',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              clipBehavior: Clip.antiAlias,
              child: Image(
                height: 180,
                width: 360,
                fit: BoxFit.cover,
                image: AssetImage('assets/currentorder.jpg'),
              ),
            ),
            const SizedBox(
              height: 20,
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
                      color: const Color(0xFFFEF0E9)),
                  child: Text('قيد الانتظار',
                      style: GoogleFonts.tajawal(
                        color: const Color(0xFFF96D1F),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Text(
                  date,
                  style: GoogleFonts.tajawal(
                      color: const Color(0xFF666666),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text('تفاصيل الطلب ',
                style: GoogleFonts.tajawal(
                    color: const Color(0xFF37928B),
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 16),
                itemCount: 4,
                itemBuilder: (context, i) {
                  var key = orderdetails.keys.toList()[i];
                  var value = orderdetails.values.toList()[i];
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
            FilledButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    side: WidgetStatePropertyAll(
                        BorderSide(color: Color(0xFF37928B)))),
                onPressed: () {
                  Get.to(Editorder());
                },
                child: Text(
                  'تعديل الطلب ',
                  style: GoogleFonts.tajawal(
                      color: const Color(0xFF37928B),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )),
            const SizedBox(
              height: 8,
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
                        return AlertDialog(
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Container(
                              alignment: Alignment.center,
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 3, color: Colors.black)),
                              child: IconButton(
                                color: Colors.black,
                                onPressed: () {
                                  Get.close(1);
                                },
                                icon: const Icon(
                                  size: 20,
                                  color: Colors.black,
                                  Icons.close,
                                ),
                              ),
                            ),
                          ),
                          backgroundColor: Colors.white,
                          title: Column(
                            children: [
                              Text(
                                'هل أنت متأكد من حذف الطلب؟',
                                style: GoogleFonts.tajawal(
                                    color: const Color(0xFF000000),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                '''إذا قمت بحذف الطلب سوف يتم
 حذف جميع بيانته ولا يمكنك 
إرجاعه إلا بإنشاء طلب جديد!''',
                                maxLines: 3,
                                style: GoogleFonts.tajawal(
                                    color: const Color(0xFF969696),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              FilledButton(
                                  style: const ButtonStyle(
                                      minimumSize:
                                          WidgetStatePropertyAll(Size(215, 38)),
                                      backgroundColor: WidgetStatePropertyAll(
                                          Color(0xFFE83636)),
                                      side: WidgetStatePropertyAll(BorderSide(
                                          color: Color(0xFFE83636)))),
                                  onPressed: () {},
                                  child: Text(
                                    'حذف الطلب',
                                    style: GoogleFonts.tajawal(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  )),
                              FilledButton(
                                  style: const ButtonStyle(
                                      minimumSize:
                                          WidgetStatePropertyAll(Size(215, 38)),
                                      backgroundColor:
                                          WidgetStatePropertyAll(Colors.white),
                                      side: WidgetStatePropertyAll(BorderSide(
                                          color: Color(0xFF37928B)))),
                                  onPressed: () {
                                    Get.close(1);
                                  },
                                  child: Text(
                                    'إلغاء',
                                    style: GoogleFonts.tajawal(
                                        color: const Color(0xFF37928B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ],
                          ),
                        );
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
