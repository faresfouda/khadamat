import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/component/Custom_textField.dart';
import 'package:khadamat/controllers/DateController.dart';
import 'package:khadamat/controllers/RadioController.dart';
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
      child: ListView(padding: const EdgeInsets.only(top: 8), children: [
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
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'المواعيد المتاحة :',
                    style: TextStyle(
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
            CustomTextField(
              textfield_title: 'إضافة تفاصيل للطلب',
              hint_text: 'اكتب هنا',
              field_icon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.photo_camera)),
              obscureText: false,
              onsubmit: (String value) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertScreen();
                    });
              },
            )
          ],
        ),
      ]),
    );
  }
}
