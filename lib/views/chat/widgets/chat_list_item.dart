import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:khadamat/models/ChatPreviewModel.dart';
import 'package:khadamat/views/chat/chat.dart';

class ChatListItem extends StatelessWidget {
  final ChatPreviewModel chat;

  const ChatListItem({super.key, required this.chat});


  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(chat.sentAt);
    return Column(
      children: [
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 31,
            backgroundColor: Colors.grey[200],
            child: ClipOval(
              child: Image.asset(
                'assets/Male.png',
                width: 62,
                height: 62,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            chat.otherUserName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            chat.message,
          ),
          trailing: Text(
            DateFormat('yyyy-MM-dd – kk:mm').format(chat.sentAt),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF666666),
            ),
          ),

          subtitleTextStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF484849),
          ),
          onTap: () => Get.to(() => ChatScreen(otherUserId: chat.otherUserId.toString(),
            otherUserName: chat.otherUserName,
            orderId: chat.orderId.toString()
          )),
        ),
      ],
    );
  }
}

// final List<ChatModel> chatList = [
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
//   ChatModel(
//     name: 'كمال حمزة',
//     lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
//     time: '3:25 PM',
//     imageAsset: 'assets/Male.png',
//   ),
// ];
