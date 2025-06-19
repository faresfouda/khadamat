import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/aboutService/aboutService.dart';

class CategoryCard extends StatelessWidget {
  final int index;

  const CategoryCard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 117,
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFE8E8E8),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(
                  'assets/icons/${categories[index]['image']}',
                ),
              ),
            ),
            onTap: () {
              // Get.to(const AboutService());
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            categories[index]['category'],
            style: GoogleFonts.tajawal(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }
}

List categories = [
  {'category': 'ثلاجة', 'image': 'SVGRepo_iconCarrier (0).svg'},
  {'category': 'سخانات', 'image': 'SVGRepo_iconCarrier (6).svg'},
  {'category': 'غسالات', 'image': 'SVGRepo_iconCarrier (1).svg'},
  {'category': 'مراوح', 'image': 'SVGRepo_iconCarrier (2).svg'},
  {'category': 'تليفزيونات', 'image': 'SVGRepo_iconCarrier (3).svg'},
  {'category': 'بوتوجازات', 'image': 'SVGRepo_iconCarrier (5).svg'},
  {'category': 'مبردات مياة', 'image': 'SVGRepo_iconCarrier (4).svg'},
];
