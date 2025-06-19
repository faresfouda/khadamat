import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/controllers/home_controller.dart';
import 'package:khadamat/views/service/serviceScreen.dart';

class SearchTags extends StatelessWidget {
  final UserController userController = Get.find<UserController>();
   SearchTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return  GestureDetector(
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: List.generate(userController.offers.length, (index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.5, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFFD8D8D8), width: 1),
              ),
              child: Text(
                userController.offers[index].name,
                style:  GoogleFonts.tajawal(color: const Color(0xFF5C5C5C), fontSize: 12),
              ),
            );
          }),
        ),
        onTap: () {
          Get.to(const ServiceScreen());
        },
      );
    });
  }
}
