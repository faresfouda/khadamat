import 'package:flutter/widgets.dart';

class MainOfferImage extends StatelessWidget {
  const MainOfferImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        'assets/screen1.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
