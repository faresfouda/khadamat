import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:khadamat/component/generalview.dart';
import 'package:khadamat/views/workerprofile/widget/contactcontainer.dart';
import 'package:khadamat/views/workerprofile/widget/profileimage.dart';
import 'package:khadamat/views/workerprofile/widget/workerinfo.dart';

class WorkerProfile extends StatelessWidget {
  const WorkerProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return GeneralView(
        ScreenImage: const ProfileImage(),
        ScreenContent: const WorkerInfo(),
        iconchild: const BackButton(),
        screentitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ContactContainer(
              contacticon: Icons.chat,
            ),
            Column(
              children: [
                Text(
                  'كمال حمزة',
                  style: Theme.of(context).textTheme.bodySmall,
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
            const ContactContainer(contacticon: Icons.share),
          ],
        ),
        image: 'assets/workerinfobackground.png',
        scaffoldcolor: const Color(0xFF37928B));
  }
}
