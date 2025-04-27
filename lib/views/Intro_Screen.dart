import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/Get_intro.dart';
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
              Get.offAllNamed('signin');
            },
            child: Text(
              'تخطي',
              style: Theme.of(context).textTheme.labelMedium,
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
              height: 450,
              child: PageView.builder(
                controller: getIntro.pageController,
                itemCount: getIntro.IntroData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50, bottom: 18),
                          child: Image.asset(
                            getIntro.IntroData.keys.toList()[index],
                          ),
                        ),
                        Text(
                          getIntro.IntroData.values.toList()[index][0],
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          getIntro.IntroData.values.toList()[index][1],
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
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
                dotWidth: 16,
                activeDotColor: const Color(0xFF4ECDC4),
                dotHeight: 3,
                dotColor: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            FilledButton(
              onPressed: () {
                getIntro.skip();
              },
              // style: Theme.of(context).filledButtonTheme.style,
              child: Text(
                'التالي',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
