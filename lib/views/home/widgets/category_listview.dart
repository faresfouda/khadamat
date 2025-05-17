import 'package:flutter/widgets.dart';
import 'package:khadamat/views/home/widgets/services_card.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ServicesCard(
              image: Image.asset(
                services[index]['image']!,
                fit: BoxFit.cover,
              ),
              title: services[index]['service']!,
            ),
          );
        },
      ),
    );
  }
}
