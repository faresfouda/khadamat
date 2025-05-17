import 'package:flutter/material.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/customalertdialogue.dart';
import 'package:khadamat/components/elevatedButton.dart';
import 'package:khadamat/views/profile/widgets/customtextfield.dart';

class TextmMssage extends StatelessWidget {
  const TextmMssage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = 'رساله نصيه';
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(
          color: Color(0xFF37928B),
        ),
        title: Text(
          '${service}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF37928B),
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مرحبا، كيف يمكننا مساعدتك؟',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF37928B),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'العنوان',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF484849),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          icon_path: '',
                          hintText: 'اكتب عنوان مشكلتك',
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Text(
                          'الموضوع',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF484849),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              'اكتب هنا',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF969696),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xFFE8E8E8),
                                width: 1,
                              ),
                            ),
                          ),
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF969696),
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        child: Container(
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
