import 'package:flutter/material.dart';
import 'package:khadamat/components/SignView_background.dart';

class SignView extends StatelessWidget {
  const SignView({
    super.key,
    required this.Logo,
    required this.Child,
    required this.iconchild,
    required this.screentitle,
  });
  final String Logo;
  final Widget Child;
  final Widget? iconchild;
  final String screentitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6F0FC),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          const SignviewBackground(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                //logo image
                child: Image(image: AssetImage(Logo)),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    screentitle,
                    style: const TextStyle(
                        color: Color(0xFF4ECDC4),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            
              Expanded(child: ListView(children: [Child])),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 342, top: 70),
            child: iconchild,
          )
        ],
      ),
    );
  }
}
