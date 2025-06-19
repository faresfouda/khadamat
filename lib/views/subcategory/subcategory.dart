import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/controllers/category_controller.dart';
import 'package:khadamat/views/subcategory/widget/subcategory_card.dart';

class SubcategoryScreen extends StatefulWidget {
  final int? categoryId;
  final String serviceName;
  const SubcategoryScreen({super.key, this.categoryId, required this.serviceName});

  @override
  State<SubcategoryScreen> createState() => _SubcategoryScreenState();
}

class _SubcategoryScreenState extends State<SubcategoryScreen> {
  final CategoryController categoryController = Get.find<CategoryController>();
  @override
  void initState() {
    super.initState();
    if (widget.categoryId != null) {
      categoryController.LoadCategoryById(widget.categoryId!);
    }
  }
  @override
  Widget build(BuildContext context) {
    print('subcategory screen categoryId: ${widget.categoryId}');
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(color: Color(0xFF5C5C5C),),
        title: Text(
          '${widget.serviceName}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF37928B),
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Obx((){
        return categoryController.isLoading.value?Center(child: CircularProgressIndicator()):Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: categoryController.categoryById.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                      child: SubcategoryCard(
                        index: index,
                        category: categoryController.categoryById[index],
                      ),
                    );
                  }),
            ),
          ],
        );
      }),
    );
  }
}
