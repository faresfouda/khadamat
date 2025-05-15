import 'package:flutter/material.dart';

class Previouswork extends StatelessWidget {
  const Previouswork({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/workone.png',
      'assets/worktwo.png',
      'assets/workthree.png',
      'assets/workfour.png',
      'assets/workfive.png',
    ];
    return GridView.builder(
      padding: const EdgeInsets.only(top: 8, right: 12, left: 12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8, // Adjust for your image aspect
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
