import 'package:flutter/material.dart';
import 'package:khadamat/theme/apptheme.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String username;

  const HomeAppBar({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مرحباً $username',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'كيف حالك اليوم!',
              style: Theme.of(context).textTheme.headlineMedium,
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