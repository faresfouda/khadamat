import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khadamat/components/elevatedButton.dart';

class OfferCard extends StatelessWidget{
  final String service;
  final String price;

  const OfferCard({super.key, required this.service, required this.price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFE8E8E8),width: 1),
        ),
        width: 138,
        height: 185,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("${service}"),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(price,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color(0xFF0B0B0B)),),
                    SizedBox(height: 5,),
                    Text("EGP",style: TextStyle(fontSize: 14,color: Color(0xFF666666)),),
                  ],
                ),
              ),
              Container(
                width: 106,
                child: CustomElevatedButton(
                  text: 'اطلب',
                  fontsize: 14,
                  radius: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}final offers = [
  {'service': 'تركيب مصباح', 'price': '50'},
  {'service': 'تركيب صنبور', 'price': '80'},
  {'service': 'تركيب مصباح', 'price': '50'},
];