import 'package:flutter/material.dart';

void showCustomAlertDialog(BuildContext context, String text) {
  showDialog(
    context: context,
    builder: (context) {
      Future.delayed(
          const Duration(seconds: 2),
              () {
            Navigator.of(context).pop();
          });
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24, vertical: 245),
        child: Container(
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/check.png'),
              SizedBox(height: 16),
              Text(
                text,
                style: TextStyle(
                    color:
                    Color(0xFF37928B),
                    fontWeight:
                    FontWeight.w700,
                    fontSize: 16
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
