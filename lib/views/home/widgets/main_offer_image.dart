import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/aboutService/aboutService.dart';

class MainOfferImage extends StatelessWidget {
  const MainOfferImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const AboutService(categoryId: 2));
      },
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          'assets/screen1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
