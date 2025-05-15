import 'package:flutter/material.dart';
import 'package:khadamat/component/GeneralViewbackground.dart';

class GeneralView extends StatelessWidget {
  const GeneralView({
    super.key,
    required this.ScreenImage,
    required this.ScreenContent,
    required this.iconchild,
    required this.screentitle,
    required this.image,
    required this.scaffoldcolor,
  });
  final Widget ScreenImage;
  final Widget ScreenContent;
  final Widget? iconchild;
  final String image;
  final Widget screentitle;
  final Color scaffoldcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldcolor,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          GeneralViewBackground(
            image: image,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                //logo image
                child: ScreenImage,
              ),
              const SizedBox(
                height: 16,
              ),
              screentitle,
              Expanded(child: SingleChildScrollView(child: ScreenContent)),
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
