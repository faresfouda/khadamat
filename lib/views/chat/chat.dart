import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/chatbubbles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'كمال حمزة',
          style: GoogleFonts.almarai(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF37928B),
        leading: const Back_Button(
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
                  child: ListView.builder(
                    itemCount: chat.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ChatBubble(
                        text: chat[index]['message'] ?? '',
                        isSender: chat[index]['sender'] ?? false,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/camera.svg',
                            color: const Color(0xFF37928B),
                          ),
                        ),
                        hintText: 'اكتب هنا',
                        filled: true,
                        fillColor: const Color(0xFFEDFAF9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF37928B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/send.svg',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF37928B),
    );
  }
}

List chat = [
  {
    'sender': true,
    'message':
        'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.',
    'time': '10:00 AM',
  },
  {
    'sender': false,
    'message':
        'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو ',
    'time': '10:01 AM',
  },
  {
    'sender': true,
    'message': 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    'time': '10:02 AM',
  },
  {
    'sender': false,
    'message': 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    'time': '10:00 AM',
  },
  {
    'sender': false,
    'message':
        'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي ,لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي.',
    'time': '10:01 AM',
  },
  {
    'sender': true,
    'message': 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    'time': '10:02 AM',
  },
];
