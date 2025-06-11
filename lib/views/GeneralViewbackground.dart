import 'package:flutter/material.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/theme/apptheme.dart';

class GeneralViewBackground extends StatelessWidget {
  const GeneralViewBackground({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Background Image
        Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Image(image: AssetImage(image)),
                const Padding(
                  padding: EdgeInsets.only(top: 55, right: 12),
                  child: Back_Button(color: AppColors.whitecolor),
                )
              ],
            ),
          ],
        ),
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
