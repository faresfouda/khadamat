import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:khadamat/WorkerListScreen.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/theme/apptheme.dart';

class Workerssearch extends StatelessWidget {
  const Workerssearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(36, 36))),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Back_Button(
                      color: AppColors.primary,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: TextFormField(
                          style: GoogleFonts.almarai(
                              color: const Color(0xFF969696),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            label: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/search-normal.svg',
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'ابحث',
                                  style: GoogleFonts.almarai(
                                      color: const Color(0xFF969696),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            filled: true,
                            fillColor: const Color(0xFFE8E8E8),
                            hintStyle: GoogleFonts.almarai(
                                color: const Color(0xFF969696),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFDFDFDF)),
                                borderRadius: BorderRadius.circular(16)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFDFDFDF)),
                                borderRadius: BorderRadius.circular(16)),
                          )),
                    )),
                  ],
                ),
                FilledButton(
                    onPressed: () {
                      // Get.to(const WorkerListScreen());
                    },
                    child: const Text('بحث'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
