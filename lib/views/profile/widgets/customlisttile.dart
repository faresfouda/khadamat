import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Function()? ontap;
  const CustomListTile({super.key,required this.title, this.ontap });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/arrow.svg',
            ),
          ],
        ),
      ),
    );
  }
}
