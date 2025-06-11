import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/servicecategory/serice_category.dart';

class ServicesCard extends StatelessWidget {
  final Image image;
  final String title;

  const ServicesCard({super.key, required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 70,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFF4F4F4),
                ),
              ),
              child: image,
            ),
            onTap: () {
              Get.to(const ServiceCategoryScreen());
            },
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.almarai(
                fontSize: 12,
                color: const Color(0xFF133848),
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

final services = [
  {'service': 'التشطيبات', 'image': 'assets/house.png'},
  {'service': 'النقل والتوصيل', 'image': 'assets/truck.png'},
  {'service': 'التشطيبات', 'image': 'assets/house.png'},
];
