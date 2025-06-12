import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/models/chat_model.dart';
import 'package:khadamat/views/chat/chat.dart';

class ChatListItem extends StatelessWidget {
  final ChatModel chat;

  const ChatListItem({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            radius: 31,
            backgroundColor: Colors.grey[200],
            child: ClipOval(
              child: Image.asset(
                chat.imageAsset,
                width: 62,
                height: 62,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            chat.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            chat.lastMessage,
          ),
          trailing: Text(
            textDirection: TextDirection.ltr,
            chat.time,
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
          onTap: () => Get.to(const ChatScreen()),
        ),
      ],
    );
  }
}

final List<ChatModel> chatList = [
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
  ChatModel(
    name: 'كمال حمزة',
    lastMessage: 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي',
    time: '3:25 PM',
    imageAsset: 'assets/Male.png',
  ),
];
