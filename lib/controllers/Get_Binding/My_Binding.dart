import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:khadamat/controllers/Get_intro.dart';
import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/dio_consumer.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetIntro());
    Get.put<ApiConsumer>(DioConsumer(dio: Dio()));
  }

}
