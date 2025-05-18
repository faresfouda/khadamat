import 'package:flutter/material.dart';
import 'package:khadamat/components/map_workerslistview.dart';

class Workerslist extends StatelessWidget {
  const Workerslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تجهيز الطلب'),
      ),
      body: const WorkersListView()
    );
  }
}
