import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/controllers/Get_intro.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final GetIntro getIntro = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 300),
          child: GestureDetector(
            onTap: () {
              Get.offAllNamed('signin');
            },
            child: Text(
              'تخطي',
              style: GoogleFonts.almarai(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 430,
              child: PageView.builder(
                controller: getIntro.pageController,
                itemCount: getIntro.IntroData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 300,
                          child: SvgPicture.asset(
                            getIntro.IntroData.keys.toList()[index],
                          ),
                        ),
                        Text(getIntro.IntroData.values.toList()[index][0],
                            style: GoogleFonts.almarai(
                                color: AppColors.primary,
                                fontSize: 32,
                                fontWeight: FontWeight.w700)),
                        Text(
                            textAlign: TextAlign.center,
                            getIntro.IntroData.values.toList()[index][1],
                            style: GoogleFonts.almarai(
                                color: AppColors.blackcolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: getIntro.pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 8,
                activeDotColor: AppColors.primary,
                dotHeight: 3,
                dotColor: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            FilledButton(
              onPressed: () {
                getIntro.skip();
              },
              child: const Text(
                'التالي',
              ),
            )
          ],
        ),
      ),
    );
  }
}
