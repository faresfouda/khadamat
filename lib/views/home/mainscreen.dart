import 'package:flutter/material.dart';
import 'package:khadamat/views/chat/chat.dart';
import 'package:khadamat/views/home/homescreen.dart';
import 'package:khadamat/views/home/widgets/custom_bottom_navbar.dart';
import 'package:khadamat/views/myorders/my_orders.dart';
import 'package:khadamat/views/profile/profileScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const MyOrders(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 81,
        child: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            setState(() {});
            _selectedIndex = index;
          },
        ),
      ),
    );
  }
}
