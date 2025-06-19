import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/servicecategory/serice_category.dart';

class ServicesCard extends StatelessWidget{
  final Image image;
  final String title;
  final int? categoryId;
  final String serviceName;

  const ServicesCard({super.key, required this.image, required this.title, this.categoryId, required this.serviceName});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 70,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFF4F4F4),
                ),
              ),
              child: image,
            ),
            onTap: (){
              Get.to( ServiceCategoryScreen(
                categoryId: categoryId,
                serviceName: serviceName,
              ));
            },
          ),
          const SizedBox(height: 6,),
          Text(title,textAlign: TextAlign.center,style: const TextStyle(fontSize: 12,color: Color(0xFF133848)),)
        ],
      ),
    );
  }

}

