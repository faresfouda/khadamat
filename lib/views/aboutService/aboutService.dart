import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';
import 'package:khadamat/components/elevatedButton.dart';
import 'package:khadamat/controllers/category_controller.dart';
import 'package:khadamat/views/workermap.dart';

class AboutService extends StatefulWidget {
  final int categoryId;
  const AboutService({super.key, required this.categoryId});

  @override
  State<AboutService> createState() => _AboutServiceState();
}

class _AboutServiceState extends State<AboutService> {
  final CategoryController categoryController = Get.find<CategoryController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      categoryController.LoadServices(widget.categoryId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          leading: const Back_Button(
            color: Color(0xFF37928B),
          ),
          title: Text(
              categoryController.service.value?.name ?? '',
              style: const TextStyle(color: Color(0xFF37928B)),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            (categoryController.service.value?.imageUrl != null)
                ? Image.network(
                    categoryController.service.value!.imageUrl!,
                    width: double.infinity,
                    height: 313,
                    fit: BoxFit.cover,
                  )
                :
            Image.asset(
              'assets/aboutservice.png',
              width: double.infinity,
              height: 313,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                categoryController.service.value?.description ?? 'تشمل هذه الخدمة مجموعة من المهام التي تهدف إلى تلبية احتياجاتك بأعلى جودة ممكنة، حيث يتم تنفيذها بواسطة فريق متخصص يضمن لك الكفاءة والاحترافية. نحن نحرص على تقديم تجربة سلسة ومرضية من البداية حتى النهاية.',
                style: GoogleFonts.tajawal(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF666666),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding:  EdgeInsets.only(bottom: 30.0, right: 24, left: 24),
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: CustomElevatedButton(
              text: 'اطلب',
              fontsize: 20,
              radius: 16,
              onpressed: () {
                Get.to( Workermap(
                  service_id: categoryController.service.value?.id ?? 0,
                ));
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    });
  }
}
//
// const data =
//     'تشمل الخدمة فحص مكونات الثلاجة مثل المحرك، الضاغط، ودوائر التبريد، بالإضافة إلى إصلاح الأعطال المتعلقة بتسريب الغاز، تراكم الثلج، أو عدم التبريد بالشكل المطلوب. تهدف الصيانة الدورية إلى تحسين أداء الثلاجة وتجنب الأعطال المفاجئة التي قد تؤدي إلى تلف المواد الغذائية وارتفاع استهلاك الطاقة.';
