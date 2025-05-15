import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/subcategory/subcategory.dart';

class ServiceCategoryCard extends StatelessWidget{
  final int index;

  const ServiceCategoryCard({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 179,
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 140,
              width: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFE8E8E8),
                  width: 1,
                ),
              ),
              child: Image.asset(
                'assets/${categories[index]['image']}',
                fit: BoxFit.fill,
              ),
            ),
            onTap: (){
              Get.to(const SubcategoryScreen());
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            categories[index]['category'],
            style: const TextStyle(
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
  {'category': 'كهربائي', 'image': 'service_cat_1.png'},
  {'category': 'سباك', 'image': 'service_cat_2.png'},
  {'category': 'نقاش', 'image': 'service_cat_3.png'},
  {'category': 'كهربائي', 'image': 'service_cat_1.png'},
  {'category': 'سباك', 'image': 'service_cat_2.png'},
  {'category': 'نقاش', 'image': 'service_cat_3.png'},
  {'category': 'كهربائي', 'image': 'service_cat_1.png'},
  {'category': 'سباك', 'image': 'service_cat_2.png'},
  {'category': 'نقاش', 'image': 'service_cat_3.png'},
];