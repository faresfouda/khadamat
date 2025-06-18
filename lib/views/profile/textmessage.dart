import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/CustomtextField.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/customalertdialogue.dart';
import 'package:khadamat/components/elevatedButton.dart';

class TextmMssage extends StatelessWidget {
  const TextmMssage({super.key});

  @override
  Widget build(BuildContext context) {
    const service = 'رساله نصيه';
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(
          color: Color(0xFF37928B),
        ),
        title: const Text(
          service,
        ),
      ),
      body: Expanded(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/Online-interpretation-services.png',
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'مرحبا، كيف يمكننا مساعدتك؟',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF37928B),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ])),
                        Form(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                 Customtextfield(
                                  textfield_title: 'العنوان',
                                  hint_text: 'اكتب عنوان مشكلتك',
                                  backicon: null,
                                  obscureText: false, color: Colors.transparent,controller: TextEditingController(),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                                Text(
                                  'الموضوع',
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF484849),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      'اكتب هنا',
                                      style: GoogleFonts.tajawal(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF969696),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      borderSide: const BorderSide(
                                        color: Color(0xFFDFDFDF),
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xFFDFDFDF)),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xFFDFDFDF)),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                  ),
                                  maxLines: 5,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF969696),
                                  ),
                                ),
                                const SizedBox(
                                  height: 26,
                                ),
                              ]),
                        ),
                      ])))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        child: SizedBox(
          height: 48,
          child: CustomElevatedButton(
            text: 'ارسال',
            fontsize: 16,
            radius: 10,
            onpressed: () {
              showCustomAlertDialog(
                context,
                'تم ارسال الطلب بنجاح',
              );
            },
          ),
        ),
      ),
    );
  }
}
