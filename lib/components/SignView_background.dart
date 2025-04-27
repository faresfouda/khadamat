import 'package:flutter/material.dart';

class SignviewBackground extends StatelessWidget {
  const SignviewBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              //Background Image
              const Image(image: AssetImage('assets/background.png')),
              // Login Container
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36)),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                ),
              ),
            ],
          );
  }
}