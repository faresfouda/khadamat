import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/workerprofile/WorkerProfile.dart';

class WorkerListScreen extends StatelessWidget {
  const WorkerListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('تجهيز الطلب'),
        leading: const Back_Button(color: AppColors.primary),
      ),
      body: Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(const WorkerProfile());
                      },
                      child: ListTile(
                        leading: const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Image(image: AssetImage('assets/Male.png')),
                        ),
                        title: Text(
                          'أحمد الحسيني',
                          style: GoogleFonts.tajawal(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF37928B)),
                        ),
                        subtitle: Text(
                          'كهربائي',
                          style: GoogleFonts.tajawal(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        trailing: RatingBar.builder(
                          itemSize: 25,
                          ignoreGestures: true,
                          onRatingUpdate: (rate) {},
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star_border_purple500_rounded,
                              color: Color(0xFFFFC85D),
                            );
                          },
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Color(0xFFE8E8E8),
                    )
                  ],
                );
              })),
    );
  }
}
