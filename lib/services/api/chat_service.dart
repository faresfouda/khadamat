import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class ChatService {
  final ApiConsumer apiConsumer;

  ChatService({required this.apiConsumer});

  Future<Map<String, dynamic>> getUserConversations({
    required String token,
  }) async {
    final response = await apiConsumer.get(
      '${EndPoint.chatConversation}',
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'Failed to fetch conversation');
    }
  }
  Future<Map<String, dynamic>> getConversationById({
    required String token,
    required String otherUserId,
  }) async {
    final response = await apiConsumer.get(
      '${EndPoint.Get_Conversation_By_Id}/$otherUserId',
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'Failed to fetch conversation by ID');
    }
  }
  Future<Map<String, dynamic>> sendMessage({
    required String token,
    required String otherUserId,
    required String orderId,
    required String message,
  }) async {
    final response = await apiConsumer.post(
      '${EndPoint.send_message}',
      body: {
        'receiver_id': otherUserId,
        'order_id': orderId,
        'message': message,
        'image_urls': [],
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'Failed to send message');
    }
  }
}
