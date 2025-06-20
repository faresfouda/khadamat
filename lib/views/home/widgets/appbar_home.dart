import 'package:flutter/material.dart';
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
      clipBehavior: Clip.none,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}