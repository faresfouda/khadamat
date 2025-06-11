import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/elevatedButton.dart';

class OfferCard extends StatelessWidget {
  final String service;
  final String price;

  const OfferCard({
    super.key,
    required this.service,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 138,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFFE8E8E8), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                service,
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF666666),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                price,
                style: GoogleFonts.almarai(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF0B0B0B),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "EGP",
                style: GoogleFonts.almarai(
                    fontSize: 16,
                    color: const Color(0xFF666666),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 106,
                child: CustomElevatedButton(
                  text: 'اطلب',
                  fontsize: 14,
                  radius: 10,
                  onpressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final offers = [
  {'service': 'تركيب مصباح', 'price': '50'},
  {'service': 'تركيب صنبور', 'price': '80'},
  {'service': 'تركيب مصباح', 'price': '50'},
];
