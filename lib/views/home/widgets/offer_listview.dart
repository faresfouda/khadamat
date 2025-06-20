import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/home_controller.dart';
import 'package:khadamat/views/home/widgets/offer_card.dart';

class OfferListview extends StatelessWidget {
  const OfferListview({super.key});

  @override
  Widget build(BuildContext context) {
    final offers_controller = Get.find<UserController>();
    return Obx(() {
      if (offers_controller.offers.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }
      return SizedBox(
        height: 210,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: offers_controller.offers.length,
            itemBuilder: (context, index) {
              return OfferCard(
                service: offers_controller.offers[index].name,
                price: offers_controller.offers[index].basePrice.toString(),
              );
            }),
      );
    });
  }
}
