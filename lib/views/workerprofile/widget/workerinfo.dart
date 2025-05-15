import 'package:flutter/material.dart';
import 'package:khadamat/views/workerprofile/workerpages/aboutworker.dart';
import 'package:khadamat/views/workerprofile/workerpages/previouswork.dart';
import 'package:khadamat/views/workerprofile/workerpages/calender/workercalender.dart.dart';
import 'package:khadamat/views/workerprofile/workerpages/workerreviews.dart';

class WorkerInfo extends StatefulWidget {
  const WorkerInfo({
    super.key,
  });

  @override
  State<WorkerInfo> createState() => _WorkerInfoState();
}

class _WorkerInfoState extends State<WorkerInfo> {
  int currentindex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    Map<String, Widget> workerinfo = {
      'حول العامل': const Aboutworker(),
      'الاعمال السابقة': const Previouswork(),
      'المراجعات': Workerreviews(),
      'جدول الأعمال':  WorkerCalender(),
    };
    double gettextwidth({required String text}) {
      TextPainter textPainter = TextPainter(
          text: TextSpan(
              text: text,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
          textDirection: TextDirection.rtl)
        ..layout();
      return textPainter.width;
    }

    return Container(
        width: 357,
        height: 448,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: const Color(0xFFE8E8E8), width: 2)),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                SizedBox(
                  height: 52,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: workerinfo.length,
                      itemBuilder: (context, i) {
                        return Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, left: 10, right: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      _pageController.animateToPage(i,
                                          duration: const Duration(seconds: 1),
                                          curve: Curves.linear);
                                    },
                                    child: Text(workerinfo.keys.toList()[i],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: currentindex == i
                                                ? const Color(0xFF37928B)
                                                : const Color(0xFF666666),
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 13),
                              child: Container(
                                color: currentindex == i
                                    ? const Color(0xFF37928B)
                                    : const Color(0xFFE8E8E8),
                                width: gettextwidth(
                                    text:
                                        workerinfo.keys.toList()[currentindex]),
                                height: 1,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                const Divider(
                  color: Color(0xFFE8E8E8),
                  endIndent: 8,
                  indent: 8,
                  thickness: 1.5,
                ),
              ],
            ),
            // const Stack(
            //   children: [
            //     Divider(
            //       color: Color(0xFFE8E8E8),
            //       endIndent: 8,
            //       indent: 8,
            //       thickness: 1.5,
            //     ),
            //   ],
            // ),
            // SmoothPageIndicator(
            //     controller: _pageController,
            //     count: workerinfo.length,
            //     effect: ExpandingDotsEffect(
            //       expansionFactor: 3,
            //       dotWidth: gettextwidth(
            //           text: workerinfo.keys.toList()[currentindex]),
            //     )),
            Expanded(
                child: PageView.builder(
                    physics: const ScrollPhysics().parent,
                    onPageChanged: (value) {
                      print(gettextwidth(
                          text: workerinfo.keys.toList()[currentindex]));
                      setState(() {
                        currentindex = value;
                      });
                    },
                    controller: _pageController,
                    itemCount: workerinfo.length,
                    itemBuilder: (context, i) {
                      return workerinfo.values.toList()[i];
                    }))
          ],
        ));
  }
}
