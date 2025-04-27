import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/service/serviceScreen.dart';

class SearchTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List.generate(tags.length, (index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8.5, vertical: 11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color(0xFFD8D8D8), width: 1),
            ),
            child: Text(
              tags[index],
              style: TextStyle(color: Color(0xFF5C5C5C), fontSize: 12),
            ),
          );
        }),
      ),
      onTap: () {
        Get.to(ServiceScreen());
      },
    );
  }
}

List<String> tags = [
  'أجهزة كهربائية',
  'صيانة تكييفات',
  'تبديل موتور الغسالة',
  'تشطيبات السيراميك',
  'تركيب مصباح',
  'صيانة تكييفات',
];
