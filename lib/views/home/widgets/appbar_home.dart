import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/controllers/AuthController.dart';
import 'package:khadamat/theme/apptheme.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AuthController authController = Get.find<AuthController>();

  HomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final String username = authController.user.value!.name!;
    return AppBar(
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحباً $username',
              style: GoogleFonts.almarai(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'كيف حالك اليوم!',
              style: GoogleFonts.almarai(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF969696),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: AppColors.primary,
                size: 30,
              )),
        )
      ],
      clipBehavior: Clip.none,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
