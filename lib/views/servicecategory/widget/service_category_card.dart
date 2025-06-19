import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khadamat/models/subcategory_model.dart';
import 'package:khadamat/views/subcategory/subcategory.dart';

class ServiceCategoryCard extends StatelessWidget{
  final int index;
  final SubCategory subCategory;

  const ServiceCategoryCard({super.key, required this.index, required this.subCategory});
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
              child: (subCategory.image_url == null)
                  ? Image.asset('assets/service_cat_1.png', fit: BoxFit.cover)
                  : Image.network(subCategory.image_url!, fit: BoxFit.cover),
            ),
            onTap: (){
              Get.to(SubcategoryScreen(
                categoryId: subCategory.id,
                serviceName: subCategory.name ?? 'الخدمة',
              ));
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            subCategory.name ?? 'غير متوفر',
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