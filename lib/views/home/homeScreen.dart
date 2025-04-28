import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:khadamat/views/home/widgets/offerCard.dart';
import 'package:khadamat/views/home/widgets/servicesCard.dart';
import 'package:khadamat/views/search/searchScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0,left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => SearchScreen());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/search-normal.svg',
                    ),
                    SizedBox(width: 8),
                    Text(
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

            SizedBox(height: 20,),
            Text("باقات مستر فِكس",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
            SizedBox(height: 16,),
            Container(
              width: double.infinity,
              child: Image.asset('assets/screen1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24,),
            Text("الخدمات",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF133848))),
            SizedBox(height: 16,),
            Container(
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
                      image: Image.asset(services[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                      title: services[index]['service']!,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24,),
            Text("قائمة بالأسعار الأساسية",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF031123))),
            SizedBox(height: 16,),
            Container(
              height: 235,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return OfferCard(service: offers[index]['service']!, price: offers[index]['price']!,);
                  }
              ),

            ),

          ],
        ),
      ),
    );
  }
}
