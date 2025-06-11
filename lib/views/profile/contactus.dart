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
    const service = 'تواصل معنا';
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(
          color: Color(0xFF37928B),
        ),
        title: const Text(
          service,
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
              Get.to(() => const ChatScreen());
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ContactUsButton(
            iconPath: 'assets/icons/Mail.svg',
            text: 'ارسال رساله نصيه',
            onTap: () {
              Get.to(() => const TextmMssage());
            },
          ),
        ],
      ),
    );
  }
}
