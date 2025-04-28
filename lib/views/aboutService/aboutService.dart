import 'package:flutter/material.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/elevatedButton.dart';


class AboutService extends StatelessWidget {
  const AboutService({super.key});

  @override
  Widget build(BuildContext context) {
    final String service = 'ثلاجات';
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(),
        title: Text(
          '${service}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF37928B),
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/aboutservice.png',
            width: double.infinity,
            height: 313,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24),
            child: Text('${data}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF666666),
                ),
                textAlign: TextAlign.right),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, right: 24, left: 24),
        child: Container(
          width: double.infinity,
          height: 56,
          child: CustomElevatedButton(
            text: 'اطلب',
            fontsize: 20,
            radius: 16,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


final data = ' تشمل الخدمة فحص مكونات الثلاجة مثل المحرك، الضاغط، ودوائر التبريد، بالإضافة إلى إصلاح الأعطال المتعلقة بتسريب الغاز، تراكم الثلج، أو عدم التبريد بالشكل المطلوب. تهدف الصيانة الدورية إلى تحسين أداء الثلاجة وتجنب الأعطال المفاجئة التي قد تؤدي إلى تلف المواد الغذائية وارتفاع استهلاك الطاقة.';