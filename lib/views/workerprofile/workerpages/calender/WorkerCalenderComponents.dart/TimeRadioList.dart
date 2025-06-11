import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeRadiolist extends StatelessWidget {
  const TimeRadiolist({
    super.key,
    required this.dates,
    required this.onchanged,
    required this.selected,
  });
  final List<String> dates;
  final ValueChanged onchanged;
  final String selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            itemCount: dates.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFE8E8E8), width: 1.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: RadioListTile(
                      fillColor:
                          const WidgetStatePropertyAll(Color(0xFF37928B)),
                      activeColor: const Color(0xFF37928B),
                      title: Text(
                        dates[i],
                        style: GoogleFonts.tajawal(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF37928B)),
                      ),
                      value: dates[i],
                      groupValue: selected,
                      onChanged: onchanged,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
              );
            }));
  }
}
