import 'package:flutter/material.dart';
import 'package:khadamat/views/SignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'views/home/mainscreen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  Future<Widget> _checkToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    if (token != null && token.isNotEmpty) {
      return const MainScreen();
    } else {
      return Signin();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _checkToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasData) {
          return snapshot.data!;
        } else {
          return const Scaffold(
            body: Center(child: Text("Unexpected error")),
          );
        }
      },
    );
  }
}
