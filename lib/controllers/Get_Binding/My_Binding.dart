import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/DateController.dart';
import 'package:khadamat/controllers/Get_intro.dart';
import 'package:khadamat/controllers/RadioController.dart';
import 'package:khadamat/controllers/AuthController.dart';
import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/auth/auth_service.dart';
import 'package:khadamat/services/api/dio_consumer.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetIntro());
    Get.put(Datecontroller());
    Get.put(Radiocontroller());
    Get.put<ApiConsumer>(DioConsumer(dio: Dio()));
    Get.put(AuthController(authService: auth_service(apiConsumer: Get.find())),permanent: true);

  }
}
