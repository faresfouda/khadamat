import 'package:flutter/material.dart';

class SignView extends StatelessWidget {
  const SignView({
    super.key,
    required this.Logo,
    required this.Child, required this.iconchild,
  });
  final String Logo;
  final Widget Child;
  final Widget? iconchild;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6F0FC),
      body: Stack(alignment: AlignmentDirectional.topCenter, children: [
        Column(
          children: [
            //Background Image
            const Image(image: AssetImage('assets/background.png')),
            // Login Container
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Child),
            ),
          ],
        ),
        // Login Logo
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Image(image: AssetImage(Logo)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 342, top: 70),
          child: iconchild,
        )
      ]),
    );
  }
}
