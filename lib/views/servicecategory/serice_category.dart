import 'package:flutter/material.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/views/servicecategory/widget/service_category_card.dart';

class ServiceCategoryScreen extends StatelessWidget {
  const ServiceCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String service = 'التشطيبات';
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(color: Color(0xFF5C5C5C),),
        title: const Text(
          service,
         
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) {
                  return ServiceCategoryCard(
                    index: index,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
