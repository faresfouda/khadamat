import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/DateController.dart';
import 'package:khadamat/controllers/Get_intro.dart';
import 'package:khadamat/controllers/RadioController.dart';
import 'package:khadamat/controllers/category_controller.dart';
import 'package:khadamat/controllers/home_controller.dart';
import 'package:khadamat/controllers/user_controller.dart';
import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/auth/auth_service.dart';
import 'package:khadamat/services/api/category/category_services.dart';
import 'package:khadamat/services/api/dio_consumer.dart';
import 'package:khadamat/services/api/user_data/user_data.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetIntro());
    Get.put<ApiConsumer>(DioConsumer(dio: Dio()));
    // Get.put(AuthController(authService: auth_service(apiConsumer: Get.find())),);
    Get.put(
      AuthController(authService: auth_service(apiConsumer: Get.find())),
    );
    Get.put(
      UserController(userService: user_service(apiConsumer: Get.find())),
    );
    Get.put(
      CategoryController(
        CategoryService: category_service(apiConsumer: Get.find()),
      ),
    );
    Get.put(Datecontroller());
    Get.put(Radiocontroller());
  }
}
