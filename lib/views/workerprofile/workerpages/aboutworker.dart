import 'package:flutter/material.dart';
import 'package:khadamat/views/workerprofile/widget/contactinfo.dart';
import 'package:khadamat/views/workerprofile/widget/personalinfo.dart';

class Aboutworker extends StatelessWidget {
  const Aboutworker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoTitle(
            iconData: Icons.person,
            title: 'المعلومات الشخصية',
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              ContactInfo(
                iconData: Icons.location_on_rounded,
                info: 'المنصورة',
              ),
              SizedBox(
                width: 20,
              ),
              ContactInfo(
                iconData: Icons.phone_enabled_rounded,
                info: '01014480174',
              )
            ],
          ),
          ContactInfo(iconData: Icons.mail, info: 'KamalHamza@gmail.com'),
          SizedBox(
            height: 20,
          ),
          InfoTitle(iconData: Icons.shopping_bag_rounded, title: 'الخبرات '),
          SizedBox(
            height: 8,
          ),
          Text(
            'خريج المدرسة الصناعية قسم كهرباء .',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF666666)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'أملك خبرة 15 سنة في مجال الكهرباء والتوصيلات.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF666666)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'أملك خبرة 15 سنة في مجال الكهرباء والتوصيلات.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF666666)),
          )
        ],
      ),
    );
  }
}
