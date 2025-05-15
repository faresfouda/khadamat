import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/MainScreen/myorders/previousorder/My_previous_Order.dart';

class Previousorder extends StatelessWidget {
  Previousorder({super.key});
  Map<String, List> previousorder = {
    '1': [
      'assets/order.jpg',
      'تصليح غسالة أوتوماتيك',
      'كهربائي_كمال حمزة ',
      'PM 9:20 , 28/9/2024',
    ],
    '2': [
      'assets/order.jpg',
      'تصليح غسالة أوتوماتيك',
      'كهربائي_كمال حمزة ',
      'PM 9:20 , 28/9/2024',
    ],
    '3': [
      'assets/order.jpg',
      'تصليح غسالة أوتوماتيك',
      'كهربائي_كمال حمزة ',
      'PM 9:20 , 28/9/2024',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: previousorder.isEmpty
            ? const Center(
                child: Image(image: AssetImage('assets/Frame 1984078915.png')),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: previousorder.length,
                itemBuilder: (context, i) {
                  return Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      child: GestureDetector(
                        onTap: () {
                          Get.to( MyPreviousOrder());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffE8E8E8)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 16, top: 8, bottom: 8, left: 16),
                                child: Container(
                                    width: 108,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage(previousorder.values
                                              .toList()[i][0])),
                                    )),
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
                                        Text(
                                            previousorder.values.toList()[i][1],
                                            style: GoogleFonts.tajawal(
                                              color: const Color(0xFF37928B),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            previousorder.values.toList()[i][2],
                                            style: GoogleFonts.tajawal(
                                              color: const Color(0xFF484849),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            previousorder.values.toList()[i][3],
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
                                              color: const Color(0xFFEDF8F2)),
                                          child: Text(
                                            'مكتملة',
                                            style: GoogleFonts.tajawal(
                                              color: const Color(0xFF47B881),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ]))
                            ],
                          ),
                        ),
                      ));
                }));
  }
}
