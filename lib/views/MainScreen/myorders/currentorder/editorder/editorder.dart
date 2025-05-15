import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/component/backButton.dart';

class Editorder extends StatelessWidget {
  Editorder({super.key});
  Map<String, String> editing = {
    'فئة الطلب ': 'أجهزة كهربائية',
    'عنوان الطلب ': 'عنوان الطلب ',
    'وصف أكثر للطلب ':
        'بواجه عطل في الغسالة كل ما آجي أشغلها بتقعد فترة وبعدين تفصل كل شوي أثناء الغسيل . '
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(),
        title: const Text(
          'تعديل الطلب',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Expanded(
          child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
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
                    dashPattern: const [5],
                    borderType: BorderType.RRect,
                    padding: const EdgeInsets.all(1),
                    radius: const Radius.circular(10),
                    color: const Color(0xFF666666),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      child: Image(
                        height: 180,
                        width: 360,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/currentorder.jpg'),
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
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 16),
                      itemCount: editing.length,
                      itemBuilder: (context, i) {
                        final key = editing.keys.toList()[i];
                        final value = editing.values.toList()[i];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                key,
                                style: GoogleFonts.tajawal(
                                    color: const Color(0xFF000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            TextField(
                                decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: value,
                              hintMaxLines: 2,
                              hintStyle: GoogleFonts.tajawal(
                                  color: const Color(0xFF666666),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFDFDFDF)),
                                  borderRadius: BorderRadius.circular(16)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFDFDFDF)),
                                  borderRadius: BorderRadius.circular(16)),
                            )),
                            const SizedBox(
                              height: 8,
                            )
                          ],
                        );
                      },
                    ),
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
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                title: Column(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/Done.png')),
                                    Text(
                                      'تم تعديل الطلب بنجاح',
                                      style: GoogleFonts.tajawal(
                                          color: const Color(0xFF37928B),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              );
                            });
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
