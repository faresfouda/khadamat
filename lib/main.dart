import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/Get_Binding/My_Binding.dart';
import 'package:khadamat/theme/apptheme.dart';
import 'package:khadamat/views/introscreen/Intro_Screen.dart';
import 'package:khadamat/views/signin/SignIn.dart';
import 'package:khadamat/views/signup/SignUp.dart';
import 'package:khadamat/views/aboutService/aboutService.dart';
import 'package:khadamat/views/MainScreen/MainScreen.dart';
import 'package:khadamat/views/search/searchScreen.dart';
import 'package:khadamat/views/service/serviceScreen.dart';
import 'package:khadamat/views/servicecategory/serice_category.dart';
import 'package:khadamat/views/subcategory/subcategory.dart';
import 'package:khadamat/views/workermap/workermap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(const MrFixApp());
}

class MrFixApp extends StatelessWidget {
  const MrFixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:
          FlutterLocalization.instance.localizationsDelegates,
      supportedLocales: const [
        Locale('ar'),
      ],
      fallbackLocale: const Locale('ar'),
      locale: const Locale('ar'),
      theme: apptheme,
      initialBinding: MyBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => IntroScreen()),
        GetPage(
          name: '/signin',
          page: () => Signin(),
        ),
        GetPage(
          name: '/signup',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/workermap',
          page: () => const Workermap(),
        ),
        GetPage(name: '/home', page: () => const MainScreen()),
        GetPage(name: '/aboutservice', page: () => const AboutService()),
        GetPage(name: '/search', page: () => const SearchScreen()),
        GetPage(name: '/servicescreen', page: () => const ServiceScreen()),
        GetPage(
            name: '/servicecategory',
            page: () => const ServiceCategoryScreen()),
        GetPage(name: '/subcategory', page: () => const SubcategoryScreen()),
      ],
    );
  }
}
