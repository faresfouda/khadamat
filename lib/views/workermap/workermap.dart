import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:khadamat/component/SearchContainers.dart';
import 'package:khadamat/component/workerslistview.dart';
import 'package:khadamat/views/signup/SignUp.dart';
import 'package:khadamat/views/workerssearch.dart';

class Workermap extends StatelessWidget {
  const Workermap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'تجهيز الطلب ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          leading: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                style: Theme.of(context).iconButtonTheme.style,
                onPressed: () {
                  Get.off(SignUp());
                },
                icon: const Icon(
                  Icons.arrow_back_sharp,
                )),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            const GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(target: LatLng(36, 36))),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const Workerssearch());
                  },
                  child: const SearchContainer(
                    backgroundcolor: Color(0xffE8E8E8),
                    titlecolor: Color(0xFFA1A1A1),
                    Containertitle: "ابحث",
                    containericon: 'assets/whitesearchicon.png',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    color: Colors.white,
                    height: 400,
                    child: const WorkersListView())
              ],
            ),
          ],
        ));
  }
}
