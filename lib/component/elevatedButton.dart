import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double fontsize;
  final double radius;

  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.radius});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed('workermap');
      },
      style: ElevatedButton.styleFrom(
        // minimumSize: const Size(10, 10),
        backgroundColor: const Color(0xFF37928B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fontsize, color: Colors.white),
      ),
    );
  }
}
