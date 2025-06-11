import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/elevatedButton.dart';
import 'package:khadamat/views/workermap.dart';

class AboutService extends StatelessWidget {
  const AboutService({super.key});

  @override
  Widget build(BuildContext context) {
    const String service = 'ثلاجات';
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(
          color: Color(0xFF37928B),
        ),
        title: const Text(
          service,
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/aboutservice.png',
            width: double.infinity,
            height: 313,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, left: 24),
            child: Text(data,
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF666666),
                ),
                textAlign: TextAlign.right),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, right: 24, left: 24),
        child: SizedBox(
          width: double.infinity,
          height: 56,
          child: CustomElevatedButton(
            text: 'اطلب',
            fontsize: 20,
            radius: 16,
            onpressed: () {
              Get.to(const Workermap());
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

const data =
    ' تشمل الخدمة فحص مكونات الثلاجة مثل المحرك، الضاغط، ودوائر التبريد، بالإضافة إلى إصلاح الأعطال المتعلقة بتسريب الغاز، تراكم الثلج، أو عدم التبريد بالشكل المطلوب. تهدف الصيانة الدورية إلى تحسين أداء الثلاجة وتجنب الأعطال المفاجئة التي قد تؤدي إلى تلف المواد الغذائية وارتفاع استهلاك الطاقة.';
