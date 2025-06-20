import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/category_controller.dart';
import 'package:khadamat/views/home/widgets/services_card.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoryController categoryController = Get.find<CategoryController>();

    return Obx(() {
      if (categoryController.categories.isEmpty) {
        categoryController.LoadTopLevelCategory();
        return const Center(child: CircularProgressIndicator());
      }

      return SizedBox(
        height: 110,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryController.categories.length,
          itemBuilder: (context, index) {
            final category = categoryController.categories[index];
            final imageWidget = (category.image_url == null)
                ? Image.asset('assets/house.png', fit: BoxFit.cover)
                : Image.network(category.image_url!, fit: BoxFit.cover);
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ServicesCard(
                image: imageWidget,
                title: category.name ?? 'غير متوفر',
                categoryId: category.id ?? 0,
                serviceName: category.name ?? 'الخدمة',
              ),
            );
          },
        ),
      );
    });
  }
}
