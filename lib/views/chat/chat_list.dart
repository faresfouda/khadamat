import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/chat_controller.dart';
import 'package:khadamat/services/api/chat_service.dart';
import 'package:khadamat/views/chat/widgets/chat_list_item.dart';
import 'package:khadamat/views/chat/widgets/chat_list_item.dart';
import 'package:khadamat/views/chat/widgets/chat_list_item.dart';
import 'package:khadamat/views/chat/widgets/chat_list_item.dart';
import 'package:khadamat/views/chat/widgets/chat_search.dart';
import 'package:khadamat/views/chat/widgets/empty_chat_container.dart';

class ChatList extends StatefulWidget {
  ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final ChatController controller = Get.put(ChatController(chatService: ChatService(apiConsumer: Get.find())));
  @override
  void initState() {
    super.initState();
    controller.loadChatList();
  }
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
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.chatList.isEmpty) {
          return const EmptyChatContainer();
        }

        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ChatSearchTextField(),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: controller.chatList.length,
                itemBuilder: (context, index) {
                  return ChatListItem(chat: controller.chatList[index]);
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
