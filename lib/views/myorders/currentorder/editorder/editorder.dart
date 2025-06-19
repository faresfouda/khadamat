import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/controllers/user_controller.dart';
import 'package:khadamat/services/api/end_point.dart';
import 'package:khadamat/theme/apptheme.dart';

class Editorder extends StatelessWidget {
  Editorder({super.key, required this.orderid});
  final AuthController controller = Get.find<AuthController>();
  Map<String, String> editing = {
    'فئة الطلب ': 'أجهزة كهربائية',
    'عنوان الطلب ': 'عنوان الطلب ',
    'وصف أكثر للطلب ':
        'بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوي أثناء الغسيل . '
  };
  final TextEditingController orderCategory = TextEditingController();
  final TextEditingController orderAdress = TextEditingController();
  final TextEditingController orderDetails = TextEditingController();
  final int orderid;

  @override
  Widget build(BuildContext context) {
    var order = controller.MyCurrentOrder;
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(
          color: AppColors.primary,
        ),
        title: const Text(
          'تعديل الطلب',
        ),
      ),
      body: Expanded(
          child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'صورة الطلب',
                        style: GoogleFonts.tajawal(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF37928B)),
                      ),
                      Text('تعديل',
                          style: GoogleFonts.tajawal(
                            color: const Color(0xFFF96D1F),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ))
                    ],
                  ),
                  DottedBorder(
                    color: const Color(0xFF666666),
                    dashPattern: const [5],
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/currentorder/MyCurrentOrder.png',
                        height: 180,
                        width: 360,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('تفاصيل الطلب ',
                      style: GoogleFonts.tajawal(
                          color: const Color(0xFF37928B),
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      '',
                      style: GoogleFonts.tajawal(
                          color: const Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  EditOrderTextField(
                    hinttext: order[0][ApiKey.service][ApiKey.category]
                        [ApiKey.name],
                    controller: orderCategory,
                    title: 'فئة الطلب',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  EditOrderTextField(
                    hinttext: order[0][ApiKey.service][ApiKey.name],
                    controller: orderAdress,
                    title: 'عنوان الطلب',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  EditOrderTextField(
                    hinttext: order[0][ApiKey.description],
                    controller: orderDetails,
                    title: 'تفاصيل الطلب',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FilledButton(
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                          side: const WidgetStatePropertyAll(
                              BorderSide(color: Color(0xFF37928B)))),
                      onPressed: () {
                        controller.updateOrder(orderid, orderCategory.text,
                            orderAdress.text, orderDetails.text);
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         backgroundColor: Colors.white,
                        //         title: Column(
                        //           children: [
                        //             const Image(
                        //                 image:
                        //                     AssetImage('assets/Done.png')),
                        //             Text(
                        //               'تم تعديل الطلب بنجاح',
                        //               style: GoogleFonts.tajawal(
                        //                   color: const Color(0xFF37928B),
                        //                   fontSize: 16,
                        //                   fontWeight: FontWeight.w700),
                        //             )
                        //           ],
                        //         ),
                        //       );
                        //     });
                      },
                      child: Text(
                        'حفظ التعديلات',
                        style: GoogleFonts.tajawal(
                            color: const Color(0xFF37928B),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ))
        ],
      )),
    );
  }
}

class EditOrderTextField extends StatelessWidget {
  const EditOrderTextField({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.title,
  });

  final String hinttext;
  final TextEditingController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                title,
                style: GoogleFonts.tajawal(
                    color: AppColors.darkGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        TextField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hinttext,
              hintMaxLines: 2,
              hintStyle: GoogleFonts.tajawal(
                  color: const Color(0xFF666666),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(16)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(16)),
            )),
      ],
    );
  }
}
