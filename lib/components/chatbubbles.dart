import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: isSender ? 270 : 280,
        ),
        child: Container(
          margin:  EdgeInsets.symmetric(vertical: isSender ?16: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isSender ? Color(0xFF37928B) : Color(0xFFEDFAF9),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),
                bottomLeft: isSender ? Radius.circular(20) : Radius.zero,
                bottomRight: isSender ? Radius.zero : Radius.circular(20)),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isSender ? Colors.white : Color(0xFF37928B),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}