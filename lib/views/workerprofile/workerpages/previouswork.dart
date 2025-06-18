import 'package:flutter/material.dart';

class Previouswork extends StatelessWidget {
  const Previouswork({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/previouswork/work(1).png',
      'assets/previouswork/work(2).png',
      'assets/previouswork/work(3).png',
      'assets/previouswork/work(4).png',
      'assets/previouswork/work(5).png',
    ];
    return Expanded(
      child: GridView.builder(
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
      ),
    );
  }
}
