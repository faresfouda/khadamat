import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/home/widgets/search_button.dart';
import 'package:khadamat/views/myorders/currentorder/currentorder.dart';
import 'package:khadamat/views/myorders/previousorder/previousorder.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}


List<Widget> pages = [Currentorder(), Previousorder()];
PageController pageController = PageController();
int index = 0;

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  top: 50, bottom: 12, right: 20, left: 20),
              child: SearchButton(ontap: () {})),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                  style: ButtonStyle(
                      side: const WidgetStatePropertyAll(
                          BorderSide(color: AppColors.primary)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      minimumSize: const WidgetStatePropertyAll(Size(180, 40)),
                      backgroundColor: WidgetStatePropertyAll(
                          index == 0 ? AppColors.primary : Colors.white)),
                  onPressed: () {
                    pageController.jumpToPage(0);
                  },
                  child: Text(
                    'الطلبات الحالية',
                    style: GoogleFonts.tajawal(
                        color: index == 0 ? Colors.white : AppColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  )),
              FilledButton(
                  style: ButtonStyle(
                      side: const WidgetStatePropertyAll(
                          BorderSide(color: AppColors.primary)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                      minimumSize: const WidgetStatePropertyAll(Size(180, 40)),
                      backgroundColor: WidgetStatePropertyAll(
                          index == 0 ? Colors.white : AppColors.primary)),
                  onPressed: () {
                    pageController.jumpToPage(1);
                  },
                  child: Text(
                    'الطلبات السابقة',
                    style: GoogleFonts.tajawal(
                        color: index == 0 ? AppColors.primary : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
          Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: pageController,
                itemCount: pages.length,
                itemBuilder: (context, i) {
                  return pages[i];
                }),
          )
        ],
      ),
    );
  }
}
