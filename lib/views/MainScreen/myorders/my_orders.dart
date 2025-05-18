import 'package:flutter/material.dart';
import 'package:khadamat/components/SearchContainers.dart';
import 'package:khadamat/views/MainScreen/myorders/currentorder/currentorder.dart';
import 'package:khadamat/views/MainScreen/myorders/previousorder/previousorder.dart';

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
          const Padding(
            padding: EdgeInsets.only(
              top: 50,
              bottom: 12,
            ),
            child: SearchContainer(
              titlecolor: Color(0xFF484849),
              Containertitle: 'بحث',
              containericon: 'assets/blacksearchicon.png',
              backgroundcolor: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                  style: ButtonStyle(
                      side: const WidgetStatePropertyAll(
                          BorderSide(color: Color(0xFF37928B))),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      minimumSize: const WidgetStatePropertyAll(Size(180, 40)),
                      backgroundColor: WidgetStatePropertyAll(
                          index == 0 ? const Color(0xFF37928B) : Colors.white)),
                  onPressed: () {
                    pageController.jumpToPage(0);
                  },
                  child: Text(
                    'الطلبات الحالية',
                    style: TextStyle(
                        color:
                            index == 0 ? Colors.white : const Color(0xFF37928B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  )),
              FilledButton(
                  style: ButtonStyle(
                      side: const WidgetStatePropertyAll(
                          BorderSide(color: Color(0xFF37928B))),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ),
                      minimumSize: const WidgetStatePropertyAll(Size(180, 40)),
                      backgroundColor: WidgetStatePropertyAll(
                          index == 0 ? Colors.white : const Color(0xFF37928B))),
                  onPressed: () {
                    pageController.jumpToPage(1);
                  },
                  child: Text(
                    'الطلبات السابقة',
                    style: TextStyle(
                        color:
                            index == 0 ? const Color(0xFF37928B) : Colors.white,
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

