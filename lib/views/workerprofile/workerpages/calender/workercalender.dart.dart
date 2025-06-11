import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/controllers/DateController.dart';
import 'package:khadamat/controllers/RadioController.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/workerprofile/workerpages/calender/WorkerCalenderComponents.dart/AlertScreen.dart';
import 'package:khadamat/views/workerprofile/workerpages/calender/WorkerCalenderComponents.dart/TimeRadioList.dart';
import 'package:khadamat/views/workerprofile/workerpages/calender/WorkerCalenderComponents.dart/DateCalender.dart';

class WorkerCalender extends StatelessWidget {
  WorkerCalender({super.key});
  Datecontroller datecontroller = Get.find();
  Radiocontroller radiocontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          padding: const EdgeInsets.only(top: 5, right: 12, left: 12),
          children: [
            Column(
              children: [
                Obx(
                  () => DateCalender(
                    focusedDay: datecontroller.focusedday.value,
                    firstDay: datecontroller.firstday.value,
                    lastDay: datecontroller.lastday.value,
                    selectedDayPredicate: datecontroller.selectedDayPredicate,
                    onDaySelected: datecontroller.onDaySelected,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'المواعيد المتاحة :',
                        style: GoogleFonts.tajawal(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Obx(
                  () => TimeRadiolist(
                    dates: radiocontroller.dates,
                    onchanged: radiocontroller.onchanged,
                    selected: radiocontroller.selected.value,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'إضافة تفاصيل للطلب',
                      style: GoogleFonts.tajawal(
                          color: AppColors.blackcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onSubmitted: (value) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertScreen();
                        });
                  },
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.camera_alt,
                      color: AppColors.primary,
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    hintText: 'اكتب هنا ',
                    hintStyle: GoogleFonts.almarai(
                        color: const Color(0xFF969696),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
                        borderRadius: BorderRadius.circular(16)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ]),
    );
  }
}
