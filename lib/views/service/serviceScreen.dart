import 'package:flutter/material.dart';
import 'package:khadamat/component/backButton.dart';
import 'package:khadamat/views/service/widgets/categoryCard.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String service = 'أجهزة كهربائية';
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    index: index,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
