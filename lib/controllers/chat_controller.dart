import 'package:get/get.dart';
import 'package:khadamat/models/ChatPreviewModel.dart';
import 'package:khadamat/models/chat_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:khadamat/services/api/chat_service.dart';

class ChatController extends GetxController {
  final ChatService chatService;

  ChatController({required this.chatService});

  var isLoading = false.obs;
  var chatList = <ChatPreviewModel>[].obs;
  var chat = <ChatModel>[].obs;

  Future<void> loadChatList() async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    if (token.isEmpty) {
      Get.offAllNamed('/login');
      return;
    }

    final response = await chatService.getUserConversations(token:token);

    chatList.value = (response['data'] as List)
        .map((json) => ChatPreviewModel.fromJson(json))
        .toList();

    isLoading.value = false;
  }
  Future<void> loadConversationById(String otherUserId) async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    if (token.isEmpty) {
      Get.offAllNamed('/login');
      return;
    }

    final response = await chatService.getConversationById(
      token: token,
      otherUserId: otherUserId,
    );
    chat.value = (response['data']['messages'] as List)
        .map((json) => ChatModel.fromJson(json))
        .toList();

    isLoading.value = false;
  }
  Future<void> sendMessage({
    required String otherUserId,
    required String orderId,
    required String message,
  }) async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    if (token.isEmpty) {
      Get.offAllNamed('/login');
      return;
    }

    final response = await chatService.sendMessage(
      token: token,
      otherUserId: otherUserId,
      orderId: orderId,
      message: message,
    );

    if (response['success'] == true) {
      await loadConversationById(otherUserId);
    } else {
      Get.snackbar('Error', response['message'] ?? 'Failed to send message');
    }
    isLoading.value = false;
  }

}
