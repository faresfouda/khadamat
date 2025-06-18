import 'package:flutter/widgets.dart';
import 'package:khadamat/views/home/widgets/offer_card.dart';
import 'package:khadamat/views/home/widgets/services_card.dart';

class OfferListview extends StatelessWidget {
  const OfferListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return OfferCard(
              service: offers[index]['service']!,
              price: offers[index]['price']!,
            );
          }),
    );
  }
}
