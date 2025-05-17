import 'package:flutter/material.dart';
import 'package:khadamat/views/home/widgets/appbar_home.dart';
import 'package:khadamat/views/home/widgets/category_listview.dart';
import 'package:khadamat/views/home/widgets/main_offer_image.dart';
import 'package:khadamat/views/home/widgets/offer_listview.dart';
import 'package:khadamat/views/home/widgets/search_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(username: 'الطايفي',),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchButton(),
              const SizedBox(
                height: 20,
              ),
              Text("باقات مستر فِكس",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 16,
              ),
              const MainOfferImage(),
              const SizedBox(
                height: 24,
              ),
              Text("الخدمات",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 16,
              ),
              const CategoryListview(),
              const SizedBox(
                height: 24,
              ),
              Text("قائمة بالأسعار الأساسية",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 16,
              ),
              const OfferListview(),
            ],
          ),
        ),
      ),
    );
  }
}
