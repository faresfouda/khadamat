import 'package:flutter/material.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/views/subcategory/widget/subcategory_card.dart';

class SubcategoryScreen extends StatelessWidget {
  const SubcategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String service = 'كهربائي';
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(color: Color(0xFF5C5C5C),),
        title: Text(
          '${service}',
          style: TextStyle(
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
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                    child: SubcategoryCard(
                      index: index,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
