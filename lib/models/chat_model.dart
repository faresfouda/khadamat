class ChatModel {
  final int id;
  final int senderId;
  final int receiverId;
  final int orderId;
  final String message;
  final DateTime sentAt;
  final String senderName;
  final String receiverName;

  ChatModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.orderId,
    required this.message,
    required this.sentAt,
    required this.senderName,
    required this.receiverName,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'],
      senderId: json['sender_id'],
      receiverId: json['receiver_id'],
      orderId: json['order_id'],
      message: json['message'],
      sentAt: DateTime.parse(json['sent_at']),
      senderName: json['sender']['name'],
      receiverName: json['receiver']['name'],
    );
  }
}
