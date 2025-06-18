import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khadamat/theme/apptheme.dart';

class EmptyChatContainer extends StatelessWidget {
  const EmptyChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/message-remove.svg',
              width: 230,
              height: 230,
            ),
            const SizedBox(height: 48),
             const Text(
              'صندوق الرسائل فارغ !',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'لم تقم بأي محادثة بعد ,عند القيام بمحادثة عامل ما سوف تجد رسائلك هنا ..',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF666666),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
