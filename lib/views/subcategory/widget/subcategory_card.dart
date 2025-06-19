import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:khadamat/models/category_model.dart';
import 'package:khadamat/views/aboutService/aboutService.dart';

class SubcategoryCard extends StatelessWidget{
  final int index;
  final CategoryModel category;

  const SubcategoryCard({super.key, required this.index, required this.category});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFFE8E8E8),
                width: 1,
              ),
            ),
            child: (category.image_url==null)?Image.asset(
              'assets/subcat1.png',
              fit: BoxFit.fill,
            ):Image.network(
              category.image_url!,
              fit: BoxFit.fill,
            ),
          ),
          onTap: (){
            Get.to(const AboutService());
          },
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          category.name ?? 'غير متوفر',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF666666),
          ),
        ),
      ],
    );
  }

}
