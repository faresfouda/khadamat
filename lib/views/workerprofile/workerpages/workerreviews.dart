import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/theme/apptheme.dart';

class Workerreviews extends StatelessWidget {
  Workerreviews({super.key});
  Map<String, dynamic> reviews = {
    'image': 'assets/commentprofile.png',
    'name': 'Ahmed Saad',
    'rate': 5.0,
    'date': {'day': 15, 'month': 5, 'year': 2024},
    'review':
        'عامل ممتاز ,آداء ممتاز وإتقان في العمل وأسلوب راقي ,مش آخر تعامل إن شاءالله ودائما برشحه لأي حد ن قرايب ',
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 2),
          itemCount: 3,
          itemBuilder: (context, i) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.primary,
                    child: Text(
                      textAlign: TextAlign.center,
                      'AS',
                      style: GoogleFonts.tajawal(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 1),
                    child: Text(
                      reviews['name'],
                      style: GoogleFonts.tajawal(
                          color: AppColors.blackcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  subtitle: RatingBar.builder(
                      unratedColor: const Color(0xFFB8B8B8),
                      initialRating: reviews['rate'],
                      itemSize: 18,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star_rounded,
                          color: Color(0xFF37928B),
                        );
                      },
                      onRatingUpdate: (rate) {}),
                  trailing: Text(
                    '${reviews['date']['day']}/${reviews['date']['month']}/${reviews['date']['year']}',
                    style: GoogleFonts.tajawal(
                        color: AppColors.blackcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12),
                  child: Text(
                    reviews['review'],
                    style: GoogleFonts.tajawal(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackcolor),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Color(0xFFE8E8E8),
                  endIndent: 10,
                  indent: 10,
                  thickness: 2,
                ),
              ],
            );
          }),
    );
  }
}
