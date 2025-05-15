import 'package:flutter/material.dart';
import 'package:khadamat/views/MainScreen/widgets/customBottomNavBar.dart';
import 'package:khadamat/views/MainScreen/homescreen/homscreen.dart';
import 'package:khadamat/views/MainScreen/myorders/my_orders.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Map<Widget, int> screens = {
    const Homscreen(): 0,
    const MyOrders(): 1,
  };
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.keys.toList()[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 81,
        child: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
