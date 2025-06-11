import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/backButton.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    const service = 'سياسه الاستخدام';
    return Scaffold(
      appBar: AppBar(
        leading: const Back_Button(
          color: Color(0xFF002D5F),
        ),
        title: const Text(
          service,
        ),
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFE2EFFF),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Text(
                  'يرجى قراءة هذه السياسة بعناية قبل استخدام التطبيق الذي نديره.',
                  style: GoogleFonts.tajawal(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF013B7C),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'سياسة الإستخدام',
                      style: GoogleFonts.tajawal(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF37928B),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      termText,
                      style: GoogleFonts.tajawal(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF1A1A1B),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

const String termText = '''
سياسة الخصوصية
تنطبق سياسة الخصوصية هذه على تطبيق mrfix (المشار إليه هنا باسم "التطبيق") للأجهزة المحمولة التي تم إنشاؤها بواسطة (المشار إليها هنا باسم "مقدم الخدمة") كخدمة مجانية. هذه الخدمة مخصصة للاستخدام "كما هي".

جمع المعلومات واستخدامها
يقوم التطبيق بجمع المعلومات عند تنزيله واستخدامه. قد تتضمن هذه المعلومات معلومات مثل:
- عنوان بروتوكول الإنترنت الخاص بجهازك (مثل عنوان IP)
- صفحات التطبيق التي تزورها، وقت وتاريخ زيارتك، الوقت الذي تقضيه في تلك الصفحات
- الوقت الذي يقضيه في التطبيق
- نظام التشغيل الذي تستخدمه على جهازك المحمول

تنطبق سياسة الخصوصية هذه على تطبيق mrfix (المشار إليه هنا باسم "التطبيق") للأجهزة المحمولة التي تم إنشاؤها بواسطة (المشار إليها هنا باسم "مقدم الخدمة") كخدمة مجانية. هذه الخدمة مخصصة للاستخدام "كما هي".

جمع المعلومات واستخدامها
يقوم التطبيق بجمع المعلومات عند تنزيله واستخدامه. قد تتضمن هذه المعلومات معلومات مثل:
- عنوان بروتوكول الإنترنت الخاص بجهازك (مثل عنوان IP)
- صفحات التطبيق التي تزورها، وقت وتاريخ زيارتك، الوقت الذي تقضيه في تلك الصفحات
- الوقت الذي يقضيه في التطبيق
- نظام التشغيل الذي تستخدمه على جهازك المحمول.
''';
