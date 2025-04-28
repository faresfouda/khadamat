import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/chat/chat.dart';
import 'package:khadamat/views/home/homeScreen.dart';
import 'package:khadamat/views/home/widgets/customBottomNavBar.dart';


class MainScreen extends StatefulWidget {

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List <Widget> _screens = [
    const HomeScreen(),
    const Center(child: Text('طلباتي')),
    const ChatScreen(),
    const Center(child: Text('الحساب')),
  ];
  @override
  Widget build(BuildContext context) {
    final String username = 'الطايفي';
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('مرحباً ${username}',style: TextStyle(color:Color(0xFF37928B),fontWeight: FontWeight.bold,fontSize: 20)),
              SizedBox(height: 5,),
              const Text(
                'كيف حالك اليوم!',
                style: TextStyle(color:Color(0xFF969696),fontSize: 14,),
              ),
            ],
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(onPressed: (){
            Get.to(() => ChatScreen());
          }, icon: Icon(Icons.notifications_none_rounded,color: Color(0xFF37928B),size: 30,)),
        )],
        clipBehavior: Clip.none,

      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
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
