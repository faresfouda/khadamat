import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/SignView_background.dart';
import 'package:khadamat/theme/apptheme.dart';

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
      backgroundColor: AppColors.whitecolor,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          const SignviewBackground(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                //logo image
                child: SvgPicture.asset(Logo),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                child: Center(
                  child: Text(
                      textAlign: TextAlign.center,
                      screentitle,
                      style: GoogleFonts.almarai(
                          color: AppColors.primary,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Expanded(
                child: ListView(
                    padding: const EdgeInsets.only(top: 20), children: [Child]),
              ),
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
