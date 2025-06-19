class ChatPreviewModel {
  final int id;
  final int senderId;
  final int receiverId;
  final int orderId;
  final String message;
  final DateTime sentAt;
  final String senderName;
  final String receiverName;
  final String otherUserName;
  final int otherUserId;
  final String serviceName;

  ChatPreviewModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.orderId,
    required this.message,
    required this.sentAt,
    required this.senderName,
    required this.receiverName,
    required this.otherUserName,
    required this.otherUserId,
    required this.serviceName,
  });

  factory ChatPreviewModel.fromJson(Map<String, dynamic> json) {
    return ChatPreviewModel(
      id: json['id'],
      senderId: json['sender_id'],
      receiverId: json['receiver_id'],
      orderId: json['order_id'],
      message: json['message'],
      sentAt: DateTime.parse(json['sent_at']),
      senderName: json['sender']['name'],
      receiverName: json['receiver']['name'],
      otherUserName: json['otherUser']['name'],
      otherUserId: json['otherUser']['id'],
      serviceName: json['order']['service']['name'],
    );
  }
}
