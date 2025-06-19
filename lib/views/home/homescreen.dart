import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/home_controller.dart';
import 'package:khadamat/views/home/widgets/appbar_home.dart';
import 'package:khadamat/views/home/widgets/category_listview.dart';
import 'package:khadamat/views/home/widgets/main_offer_image.dart';
import 'package:khadamat/views/home/widgets/offer_listview.dart';
import 'package:khadamat/views/home/widgets/search_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final UserController userController;

  @override
  void initState() {
    super.initState();
    userController = Get.find<UserController>();

    try {
      userController.Loadprofile();
    } catch (e) {
      Get.snackbar("خطأ", "فشل في تحميل الملف الشخصي: $e",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (userController.isLoading.value) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      }
      String? userName = userController.user.value?.name;

      return Scaffold(
        appBar: HomeAppBar(username: userName ?? "مستخدم"),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchButton(),
                const SizedBox(height: 20),
                Text("باقات مستر فِكس", style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 16),
                const MainOfferImage(),
                const SizedBox(height: 24),
                Text("الخدمات", style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 16),
                const CategoryListview(),
                const SizedBox(height: 24),
                Text("قائمة بالأسعار الأساسية", style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 16),
                const OfferListview(),
              ],
            ),
          ),
        ),
      );
    });
  }
}