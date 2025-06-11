import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/views/home/widgets/appbar_home.dart';
import 'package:khadamat/views/home/widgets/category_listview.dart';
import 'package:khadamat/views/home/widgets/main_offer_image.dart';
import 'package:khadamat/views/home/widgets/offer_listview.dart';
import 'package:khadamat/views/home/widgets/search_button.dart';
import 'package:khadamat/views/search/searchScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        username: 'الطايفي',
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchButton(
                ontap: () {
                  Get.to(const SearchScreen());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "باقات مستر فِكس",
                style: GoogleFonts.almarai(
                    color: const Color(0xff133848),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 16,
              ),
              const MainOfferImage(),
              const SizedBox(
                height: 24,
              ),
              Text("الخدمات",
                  style: GoogleFonts.almarai(
                      color: const Color(0xff133848),
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 16,
              ),
              const CategoryListview(),
              const SizedBox(
                height: 24,
              ),
              Text("قائمة بالأسعار الأساسية",
                  style: GoogleFonts.almarai(
                      color: const Color(0xff133848),
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
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
