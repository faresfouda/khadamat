import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.titlecolor,
    required this.Containertitle,
    required this.containericon,
    required this.backgroundcolor,
  });
  final Color titlecolor;
  final String Containertitle;
  final String containericon;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: backgroundcolor,
            border: Border.all(color: const Color(0xffbe8e8e8)),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage(containericon)),
              const SizedBox(
                width: 5,
              ),
              Text(Containertitle,
                  style: GoogleFonts.almarai(
                      color: titlecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ),
    );
  }
}
