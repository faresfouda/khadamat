import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/orders.svg',
            color: selectedIndex == 0 ? Color(0xFF37928B) : Color(0xFF666666),
          ),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/bag-tick-2.svg',
            color: selectedIndex == 1 ? Color(0xFF37928B) : Color(0xFF666666),
          ),
          label: 'طلباتي',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/messages-2.svg',
            color: selectedIndex == 2 ? Color(0xFF37928B) : Color(0xFF666666),
          ),
          label: 'الدردشة',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            color: selectedIndex == 3 ? Color(0xFF37928B) : Color(0xFF666666),
          ),
          label: 'الحساب',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      selectedItemColor: Color(0xFF37928B),
      unselectedItemColor: Color(0xFF666666),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
