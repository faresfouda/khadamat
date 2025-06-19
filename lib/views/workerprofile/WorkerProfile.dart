import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/generalview.dart';
import 'package:khadamat/views/workerprofile/widget/contactcontainer.dart';
import 'package:khadamat/views/workerprofile/widget/profileimage.dart';
import 'package:khadamat/views/workerprofile/widget/workerinfo.dart';

class WorkerProfile extends StatelessWidget {
  const WorkerProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return GeneralView(
      image: 'assets/worker/workerinfobackground.png',
      scaffoldcolor: const Color(0xFF37928B),
      ScreenImage: const ProfileImage(),
      ScreenContent: const WorkerInfo(),
      iconchild: const Back_Button(color: AppColors.primary),
      screentitle: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContactContainer(
                contacticon: Icons.chat,
                onpresed: () {
                  // Get.to(const ChatScreen());
                },
              ),
              Column(
                children: [
                  Text(
                    'كمال حمزة',
                    style: GoogleFonts.tajawal(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  RatingBar.builder(
                      unratedColor: const Color(0xFFB8B8B8),
                      itemSize: 25,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star_rounded,
                          color: Color(0xFFFFC85D),
                        );
                      },
                      onRatingUpdate: (rate) {}),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              ContactContainer(contacticon: Icons.share, onpresed: () {}),
            ],
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
