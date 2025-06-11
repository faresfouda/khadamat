import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({
    super.key,
    required this.contacticon, required this.onpresed,
  });
  final IconData contacticon;
  final VoidCallback onpresed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFFE8E8E8), width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: IconButton(
            onPressed: onpresed,
            icon: Icon(
              contacticon,
              size: 25,
            ),
          )),
    );
  }
}
