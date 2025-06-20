import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/controllers/fixer_controller.dart';
import 'package:khadamat/services/api/fixers/fixers_service.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/workerprofile/WorkerProfile.dart';

class WorkerListScreen extends StatefulWidget {
  final int serviceId;
  const WorkerListScreen({super.key, required this.serviceId});

  @override
  State<WorkerListScreen> createState() => _WorkerListScreenState();
}

class _WorkerListScreenState extends State<WorkerListScreen> {
  final FixerController fixerController =
  Get.put(FixerController(fixersService: FixersService(apiConsumer: Get.find())));

  @override
  void initState() {
    super.initState();
    fixerController.loadFixersByServiceId(widget.serviceId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('تجهيز الطلب'),
        leading: const Back_Button(color: AppColors.primary),
      ),
      body: Obx(() {
        if (fixerController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final fixers = fixerController.fixers;

        return ListView.builder(
          itemCount: fixers.length,
          itemBuilder: (context, i) {
            final fixer = fixers[i];
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
                      fixer.name ?? 'اسم غير معروف',
                      style: GoogleFonts.tajawal(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF37928B),
                      ),
                    ),
                    subtitle: Text(
                      fixer.role ?? 'بدون وظيفة',
                      style: GoogleFonts.tajawal(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: RatingBarIndicator(
                      rating: fixer.averageRating.toDouble(),
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
          },
        );
      }),
    );
  }
}
