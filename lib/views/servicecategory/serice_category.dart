import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/controllers/category_controller.dart';
import 'package:khadamat/services/api/category/category_services.dart';
import 'package:khadamat/views/servicecategory/widget/service_category_card.dart';

class ServiceCategoryScreen extends StatefulWidget {
  final String serviceName;
  final int? categoryId;
  const ServiceCategoryScreen({super.key, this.categoryId, this.serviceName = 'الخدمة'});

  @override
  State<ServiceCategoryScreen> createState() => _ServiceCategoryScreenState();
}
class _ServiceCategoryScreenState extends State<ServiceCategoryScreen> {
  final CategoryController categoryController = Get.find<CategoryController>();
  @override
  void initState() {
    super.initState();
    if (widget.categoryId != null) {
      categoryController.LoadSubCategory(widget.categoryId!);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(color: Color(0xFF5C5C5C),),
        title: Text(
          widget.serviceName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF37928B),
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              final subCategories = categoryController.subCategories;
              if (subCategories.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }
              return GridView.builder(
                itemCount: subCategories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  return ServiceCategoryCard(subCategory: subCategories[index], index: index);
                },
              );
            }),
          ),
        ],
      ),

    );
  }
}
