import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/controllers/fixer_controller.dart';
import 'package:khadamat/services/api/fixers/fixers_service.dart';
import 'package:khadamat/views/workerprofile/WorkerProfile.dart';

class WorkersListView extends StatefulWidget {
  final int serviceId;
  const WorkersListView({
    super.key, required this.serviceId,
  });

  @override
  State<WorkersListView> createState() => _WorkersListViewState();
}

class _WorkersListViewState extends State<WorkersListView> {
  final FixerController fixerController = FixerController(fixersService: FixersService(apiConsumer: Get.find()));
  @override
  void initState() {
    super.initState();
    fixerController.loadFixersByServiceId(widget.serviceId);
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: 400,
        color: Colors.white,
        child: ListView.builder(
            itemCount: fixerController.fixers.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => WorkerProfile());
                    },
                    child: ListTile(
                      leading: const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Image(image: AssetImage('assets/Male.png')),
                      ),
                      title: Text(
                        fixerController.fixers[i].name ?? 'غير معروف',
                        style: GoogleFonts.tajawal(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF37928B)),
                      ),
                      subtitle: Text(
                        fixerController.fixers[i].role ?? 'غير معروف',
                        style: GoogleFonts.tajawal(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      trailing: RatingBarIndicator(
                        rating: fixerController.fixers[i].averageRating,
                        itemCount: 5,
                        itemSize: 25,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xFFFFC85D),
                        ),
                      ),

                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xFFE8E8E8),
                  )
                ],
              );
            }));
    });
  }
}
