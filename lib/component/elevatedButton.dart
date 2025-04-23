import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget{
  final String text;
  final double fontsize;
  final double radius;

  const CustomElevatedButton({super.key, required this.text, required this.fontsize, required this.radius});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text("$text",style: TextStyle(fontSize: fontsize,color: Colors.white),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF37928B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }

}