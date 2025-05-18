import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/route_manager.dart';
import 'package:khadamat/views/workerprofile/WorkerProfile.dart';

class WorkersListView extends StatelessWidget {
  const WorkersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(const WorkerProfile());
                },
                child: ListTile(
                  leading: const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Image(image: AssetImage('assets/Male.png')),
                  ),
                  title: const Text(
                    'أحمد الحسيني',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF37928B)),
                  ),
                  subtitle: const Text(
                    'كهربائي',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
        });
  }
}
