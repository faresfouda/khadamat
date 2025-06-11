import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khadamat/components/customalertdialogue.dart';
import 'package:khadamat/components/elevatedButton.dart';
import 'package:khadamat/views/profile/widgets/customtextfield.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  var isReadOnly = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Stack(
        children: [
          Image.asset(
            'assets/worker/workerinfobackground.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            toolbarHeight: 30,
            title: Text(
              'الملف الشخصي',
              style: GoogleFonts.tajawal(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 150, left: 16, right: 16, bottom: 11),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFFE8E8E8),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 89, left: 32, right: 32),
            child: Container(
              // height: 185,
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile_pic.png'),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isReadOnly)
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isReadOnly = false;
                            });
                          },
                          icon: SvgPicture.asset('assets/icons/edit.svg'),
                        ),
                      Text(
                        'احمد صلاح الدين',
                        style: GoogleFonts.tajawal(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                      child: ListView(
                    padding: const EdgeInsets.only(top: 0),
                    children: [
                      Container(
                        width: double.infinity,
                        height: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFE2EFFF),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 41, vertical: 10),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF37928B),
                                    ),
                                  ),
                                  Text(
                                    'الطلبات السابقة',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF37928B),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 24),
                              const VerticalDivider(
                                color: Color(0xFFB8B8B8),
                                thickness: 1,
                                width: 1,
                                indent: 10,
                                endIndent: 10,
                              ),
                              const SizedBox(width: 24),
                              Column(
                                children: [
                                  Text(
                                    '01',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF37928B),
                                    ),
                                  ),
                                  Text(
                                    'الطلبات الحالية',
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF37928B),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'الهاتف',
                              style: GoogleFonts.tajawal(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            CustomTextField(
                                initialValue: '0123456789',
                                icon_path: 'assets/icons/call.svg',
                                isreadOnly: isReadOnly),
                            const SizedBox(height: 16),
                            Text(
                              'الموقع',
                              style: GoogleFonts.tajawal(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            CustomTextField(
                                initialValue: 'القاهره الكبرى , الجيزه , الهرم',
                                icon_path: 'assets/icons/location.svg',
                                isreadOnly: isReadOnly),
                            const SizedBox(height: 16),
                            Text(
                              'البريد الالكتروني',
                              style: GoogleFonts.tajawal(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            CustomTextField(
                                initialValue: 'Ahmed.Salah22@gmail.com',
                                icon_path: 'assets/icons/Mail.svg',
                                isreadOnly: isReadOnly),
                            const SizedBox(height: 20),
                            if (!isReadOnly)
                              SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: CustomElevatedButton(
                                      text: 'حفظ التعديلات',
                                      fontsize: 16,
                                      radius: 10,
                                      onpressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();
                                          setState(() {
                                            isReadOnly = true;
                                          });
                                          showCustomAlertDialog(
                                            context,
                                            'تم حفظ التعديلات بنجاح',
                                          );
                                          print('Form submitted');
                                        }
                                      })),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
