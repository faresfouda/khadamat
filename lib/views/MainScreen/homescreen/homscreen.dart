import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/MainScreen/widgets/offerCard.dart';
import 'package:khadamat/views/MainScreen/widgets/servicesCard.dart';
import 'package:khadamat/views/search/searchScreen.dart';

class Homscreen extends StatelessWidget {
  const Homscreen({super.key});

  @override
  Widget build(BuildContext context) {
     const String username = 'الطايفي';
    return Scaffold(
     appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('مرحباً $username',
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(
                height: 5,
              ),
              Text('كيف حالك اليوم!',
                  style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                )),
          )
        ],
        clipBehavior: Clip.none,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => const SearchScreen());
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/search-normal.svg',
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'بحث',
                        style: TextStyle(
                          color: Color(0xFFA1A1A1),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("باقات مستر فِكس",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/screen1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text("الخدمات",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF133848))),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
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
              ),
              const SizedBox(
                height: 24,
              ),
              const Text("قائمة بالأسعار الأساسية",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF031123))),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 235,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return OfferCard(
                        service: offers[index]['service']!,
                        price: offers[index]['price']!,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
 
    );
  }
}