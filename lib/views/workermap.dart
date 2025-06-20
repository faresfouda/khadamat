import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/workerslistview.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/home/widgets/search_button.dart';
import 'package:khadamat/views/workerssearch.dart';

class Workermap extends StatelessWidget {
  final int service_id;
  const Workermap({super.key, required int this.service_id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'تجهيز الطلب ',
          ),
          leading: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Back_Button(color: AppColors.primary)),
        ),
        body:  Stack(
          alignment: Alignment.center,
          children: [
            GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(target: LatLng(36, 36))),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: SearchButton(
                    // ontap: () {
                    //   Get.to(const Workerssearch());
                    // },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                WorkersListView(
                  serviceId: service_id,
                )
              ],
            ),
          ],
        ));
  }
}
