import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/views/chat/chat.dart';
import 'package:khadamat/views/profile/textmessage.dart';
import 'package:khadamat/views/profile/widgets/contactusbutton.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final service = 'تواصل معنا';
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(color: Color(0xFF37928B),),
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
      body: Column(
        children: [
          ContactUsButton(
            iconPath: 'assets/icons/message-text.svg',
            text: 'خدمة العملاء',
            onTap: () {
             Get.to(() => ChatScreen());
            },
          ),
          SizedBox(height: 16,),
          ContactUsButton(
            iconPath: 'assets/icons/Mail.svg',
            text: 'ارسال رساله نصيه',
            onTap: () {
              Get.to(() => TextmMssage());
            },
          ),
        ],
      ),
    );
  }
}
