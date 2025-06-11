import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/myorders/currentorder/my_current_order.dart';

class Currentorder extends StatelessWidget {
  Currentorder({super.key});
  Map<String, dynamic> currentorder = {
    '505234': {
      'عنوان الطلب :': 'تصليح غسالة أوتوماتيك',
      'اسم العامل': 'كهربائي_كمال حمزة ',
      'الزمن': 'PM 1:30 ,منذ 5 ساعات ',
      'image': 'assets/currentorder/order.png',
      'وصف أكثر للطلب :':
          '''بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوية أثناء الغسيل''',
    },
    '506334': {
      'عنوان الطلب :': 'تصليح غسالة أوتوماتيك',
      'اسم العامل': 'كهربائي_كمال حمزة ',
      'الزمن': 'منذ 30 دقيقة ,PM 4:25',
      'image': 'assets/currentorder/order.png',
      'وصف أكثر للطلب :':
          '''بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوية أثناء الغسيل''',
    },
    '507434': {
      'عنوان الطلب :': 'تصليح غسالة أوتوماتيك',
      'اسم العامل': 'كهربائي_كمال حمزة ',
      'الزمن': 'PM 9:20 , منذ 1 يوم ',
      'image': 'assets/currentorder/order.png',
      'وصف أكثر للطلب :':
          '''بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوية أثناء الغسيل''',
    },
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentorder.isEmpty
            ? const Center(
                child: Image(image: AssetImage('assets/Frame 1984078915.png')),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: currentorder.length,
                itemBuilder: (context, i) {
                  final ordersList = currentorder.entries.toList();
                  var orderid = ordersList[i].key;
                  Map orderdetails = ordersList[i].value;
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: InkWell(
                        onTap: () {
                          Get.to(MyCurrentOrder(
                              date: orderdetails['الزمن'],
                              orderadress: orderid));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffE8E8E8)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //image
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 16, top: 8, bottom: 8, left: 16),
                                child: Container(
                                  width: 108,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Image.asset(
                                    orderdetails['image'],
                                    fit: BoxFit.fill,
                                    width: 108,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10, bottom: 12),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(orderdetails['عنوان الطلب :'],
                                            style: GoogleFonts.tajawal(
                                              color: const Color(0xFF37928B),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(orderdetails['اسم العامل'],
                                            style: GoogleFonts.tajawal(
                                              color: const Color(0xFF484849),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(orderdetails['الزمن'],
                                            style: GoogleFonts.tajawal(
                                              color: const Color(0xFF969696),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          height: 18,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: const Color(0xFFFEF0E9)),
                                          child: Text('قيد الانتظار',
                                              style: GoogleFonts.tajawal(
                                                color: const Color(0xFFF96D1F),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      ]))
                            ],
                          ),
                        ),
                      ));
                }));
  }
}
