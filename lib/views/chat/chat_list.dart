import 'package:flutter/material.dart';
import 'package:khadamat/views/chat/widgets/chat_list_item.dart';
import 'package:khadamat/views/chat/widgets/chat_search.dart';
import 'package:khadamat/views/chat/widgets/empty_chat_container.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الدردشة',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF37928B),
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: chatList.isEmpty?const EmptyChatContainer() :Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ChatSearchTextField(),
          ),
          const SizedBox(height: 24),
          Expanded(
            child:  ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return ChatListItem(chat: chatList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
