import 'package:flutter/material.dart';

class GeneralViewBackground extends StatelessWidget {
  const GeneralViewBackground({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Background Image
         Image(image: AssetImage(image)),
        // Login Container
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36), topRight: Radius.circular(36)),
              color: Colors.white,
            ),
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
