import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/aboutService/aboutService.dart';

class SubcategoryCard extends StatelessWidget{
  final int index;

  const SubcategoryCard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/${categories[index]['image']}',
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFFE8E8E8),
                  width: 1,
                ),
              ),
            ),
            onTap: (){
              Get.to(AboutService());
            },
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            categories[index]['category'],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }

}

List categories = [
  {'category': 'اجهزة كهربائية', 'image': 'subcat1.png'},
  {'category': 'توصيلات', 'image': 'subcat2.png'},
  {'category': 'تكييف وتبريد', 'image': 'subcat3.png'},
];