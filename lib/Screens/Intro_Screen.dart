import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/Get/Custom_intro_text/Title_IntroText.dart';
import 'package:khadamat/Get/Custom_intro_text/subTitle_intro.dart';
import 'package:khadamat/Get/Get_intro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final GetIntro getIntro = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              getIntro.skip();
            },
            child: const Text(
              'تخطي',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4ECDC4)),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: PageView.builder(
                controller: getIntro.pageController,
                itemCount: getIntro.IntroData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Image.asset(
                          getIntro.IntroData.keys.toList()[index],
                        ),
                      ),
                      TitleIntrotext(
                        title: getIntro.IntroData.values.toList()[index][0],
                      ),
                      SubtitleIntro(
                          SubTitle: getIntro.IntroData.values.toList()[index]
                              [1])
                    ],
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: getIntro.pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: const Color(0xFF4ECDC4),
                dotHeight: 3,
                dotColor: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: const Color(0xFF4ECDC4),
              onPressed: () {
                getIntro.skip();
              },
              height: 60,
              minWidth: 342,
              child: const Text(
                'التالي',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
