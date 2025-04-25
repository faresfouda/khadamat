import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Workermap extends StatelessWidget {
  const Workermap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'تجهيز الطلب ',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF37928B)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF37928B),
              )),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(target: LatLng(36, 36))),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffE8E8E8),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: AssetImage('assets/search-normal.png')),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'ابحث',
                          style: TextStyle(color: Color(0xFFA1A1A1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 400,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, i) {
                        return Column(
                          children: [
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child:
                                    Image(image: AssetImage('assets/Male.png')),
                              ),
                              title: const Text(
                                'أحمد الحسيني',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF37928B)),
                              ),
                              subtitle: const Text(
                                'كهربائي',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              // trailing: RatingBar(
                              //   ratingWidget: RatingWidget(
                              //     full: const Icon(
                              //       Icons.star,
                              //       size: ,
                              //       color: Color(0xFFFFC85D),
                              //     ),
                              //     half: const Icon(Icons.star),
                              //     empty: const Icon(
                              //       Icons.star,
                              //       color: Colors.grey,
                              //     ),
                              //   ),
                              //   onRatingUpdate: (double value) {},
                              // ),
                            ),
                            const Divider(
                              thickness: 2,
                              color: Color(0xFFE8E8E8),
                            )
                          ],
                        );
                      }))
            ],
          ),

          // Container(
          //   width: double.infinity,
          //   color: Colors.white,
          //   child: TextButton(
          //       onPressed: () {},
          //       child: const Text(
          //         'اظهر القائمة',
          //         style: TextStyle(color: Color(0xFF37928B)),
          //       )),
          // )
        ],
      ),
    );
  }
}
