import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/controllers/AuthController.dart';
import 'package:khadamat/services/api/end_point.dart';

class Currentorder extends StatelessWidget {
  Currentorder({super.key});
  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      const String image = 'assets/currentorder/order.png';
      return FutureBuilder(
          future: controller.Currentorder(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Scaffold(
                  body: controller.MyCurrentOrder.isEmpty
                      ? const Center(
                          child: Image(
                              image: AssetImage(
                                  'assets/currentorder/NoOrder.png')),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: controller.MyCurrentOrder.length,
                          itemBuilder: (context, i) {
                            var orderdetails = controller.MyCurrentOrder;
                            return Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 16, bottom: 16),
                                child: InkWell(
                                  onTap: () {
                                    // Get.to(MyCurrentOrder(
                                    //     date: orderdetails['الزمن'],
                                    //     orderadress: orderid));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xffE8E8E8)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        //image
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 16,
                                              top: 8,
                                              bottom: 8,
                                              left: 16),
                                          child: Container(
                                            width: 108,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Image.asset(
                                              image,
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
                                                  Text(
                                                      orderdetails[i]
                                                              [ApiKey.service]
                                                          [ApiKey.name],
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        color: const Color(
                                                            0xFF37928B),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      )),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text("كهربائي كمال حمزة",
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        color: const Color(
                                                            0xFF484849),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                      orderdetails[i]
                                                          [ApiKey.scheduled_at],
                                                      style:
                                                          GoogleFonts.tajawal(
                                                        color: const Color(
                                                            0xFF969696),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                            BorderRadius
                                                                .circular(5),
                                                        color: const Color(
                                                            0xFFFEF0E9)),
                                                    child: Text('قيد الانتظار',
                                                        style:
                                                            GoogleFonts.tajawal(
                                                          color: const Color(
                                                              0xFFF96D1F),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        )),
                                                  ),
                                                ]))
                                      ],
                                    ),
                                  ),
                                ));
                          }));
            }
          });
    });
  }
}
