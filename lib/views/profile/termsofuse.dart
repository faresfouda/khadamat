import 'package:flutter/material.dart';
import 'package:khadamat/components/backButton.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    final service = 'سياسه الاستخدام';
    return Scaffold(
      appBar: AppBar(
        leading: Back_Button(color: Color(0xFF002D5F),),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFE2EFFF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Text(
                  'يرجى قراءة هذه السياسة بعناية قبل استخدام التطبيق الذي نديره.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF013B7C),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'سياسة الإستخدام',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF37928B),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      termText,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF1A1A1B),
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

final String termText = '''
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
