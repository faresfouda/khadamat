import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFE8E8E8),
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: selectedIndex == 0
                  ? const Color(0xFF37928B)
                  : const Color(0xFF666666),
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bag-tick-2.svg',
              color: selectedIndex == 1
                  ? const Color(0xFF37928B)
                  : const Color(0xFF666666),
            ),
            label: 'طلباتي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/messages-2.svg',
              color: selectedIndex == 2
                  ? const Color(0xFF37928B)
                  : const Color(0xFF666666),
            ),
            label: 'الدردشة',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: selectedIndex == 3
                  ? const Color(0xFF37928B)
                  : const Color(0xFF666666),
            ),
            label: 'الحساب',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedLabelStyle:
            GoogleFonts.tajawal(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            GoogleFonts.tajawal(fontSize: 12, fontWeight: FontWeight.w500),
        selectedItemColor: const Color(0xFF37928B),
        unselectedItemColor: const Color(0xFF666666),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
