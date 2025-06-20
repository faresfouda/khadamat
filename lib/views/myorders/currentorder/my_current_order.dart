import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/controllers/order_controller.dart';
import 'package:khadamat/controllers/user_controller.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/myorders/currentorder/editorder/editorder.dart';

class MyCurrentOrder extends StatelessWidget {
  const MyCurrentOrder({
    super.key,
    required this.orderid,
    required this.orderCategory,
    required this.orderAdress,
    required this.orderDetails,
    required this.date,
  });
  final int orderid;
  final String orderCategory;
  final String orderAdress;
  final String orderDetails;
  final String date;

  @override
  Widget build(BuildContext context) {
    final OrderController orderController = Get.find<OrderController>();
    Map<String, dynamic> order = {
      ' رقم الطلب : ': orderid,
      ' فئة الطلب : ': orderCategory,
      ' عنوان الطلب : ': orderAdress,
      ' وصف اكثر للطلب : ': orderDetails,
    };

    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(
          color: AppColors.primary,
        ),
        title: const Text(
          'طلباتي الحالية',
        ),
      ),
      body: FutureBuilder(
          future: orderController.Currentorder(),
          builder: (Context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset('assets/currentorder/MyCurrentOrder.png',
                        height: 180, width: 360, fit: BoxFit.cover),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        height: 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFFFEF0E9)),
                        child: Text('قيد الانتظار',
                            style: GoogleFonts.tajawal(
                              color: const Color(0xFFF96D1F),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      Text(
                        date,
                        style: GoogleFonts.tajawal(
                            color: const Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('تفاصيل الطلب ',
                      style: GoogleFonts.tajawal(
                          color: const Color(0xFF37928B),
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 16),
                      itemCount: order.length,
                      itemBuilder: (context, i) {
                        final Key = order.keys.toList()[i];
                        final Value = order.values.toList().toList()[i];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: RichText(
                            text: TextSpan(
                              text: Key,
                              style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: const Color(0xFF000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '$Value',
                                  style: GoogleFonts.tajawal(
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF666666),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  FilledButton(
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          side: WidgetStatePropertyAll(
                              BorderSide(color: Color(0xFF37928B)))),
                      onPressed: () {
                        Get.to(Editorder(orderid : orderid));
                      },
                      child: Text(
                        'تعديل الطلب ',
                        style: GoogleFonts.tajawal(
                            color: const Color(0xFF37928B),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  FilledButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xFFE83636)),
                          side: WidgetStatePropertyAll(
                              BorderSide(color: Color(0xFFE83636)))),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const DeleteOrder();
                            });
                      },
                      child: Text(
                        'حذف الطلب',
                        style: GoogleFonts.tajawal(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class DeleteOrder extends StatelessWidget {
  const DeleteOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Padding(
        padding: const EdgeInsets.only(left: 200),
        child: Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.black)),
          child: IconButton(
            color: Colors.black,
            onPressed: () {
              Get.close(1);
            },
            icon: const Icon(
              size: 20,
              color: Colors.black,
              Icons.close,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Text(
            'هل أنت متأكد من حذف الطلب؟',
            style: GoogleFonts.tajawal(
                color: const Color(0xFF000000),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            textAlign: TextAlign.center,
            '''إذا قمت بحذف الطلب سوف يتم
     حذف جميع بيانته ولا يمكنك 
    إرجاعه إلا بإنشاء طلب جديد!''',
            maxLines: 3,
            style: GoogleFonts.tajawal(
                color: const Color(0xFF969696),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 3,
          ),
          FilledButton(
              style: ButtonStyle(
                  minimumSize: const WidgetStatePropertyAll(Size(215, 38)),
                  backgroundColor:
                      const WidgetStatePropertyAll(Color(0xFFE83636)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  side: const WidgetStatePropertyAll(
                      BorderSide(color: Color(0xFFE83636)))),
              onPressed: () {},
              child: Text(
                'حذف الطلب',
                style: GoogleFonts.tajawal(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )),
          FilledButton(
              style: ButtonStyle(
                  minimumSize: const WidgetStatePropertyAll(Size(215, 38)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  side: const WidgetStatePropertyAll(
                      BorderSide(color: Color(0xFF37928B)))),
              onPressed: () {
                Get.close(1);
              },
              child: Text(
                'إلغاء',
                style: GoogleFonts.tajawal(
                    color: const Color(0xFF37928B),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )),
        ],
      ),
    );
  }
}
