import 'package:dio/dio.dart';
import 'package:khadamat/core/api/api_consumer.dart';
import 'package:khadamat/core/api/end_point.dart';
import '../errors/exceptions.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer({required this.dio}){
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      error: true,
    ));
  }
  @override
  Future delete(String url, {Map<String, String>? headers,dynamic body,isFormData =false}) async{
    try {
      final response = await dio.delete(
          url,
          data:isFormData?FormData.fromMap(body):body,
          options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  Future get(String url, {Map<String, String>? headers}) async{
    try {
      final response = await dio.get(url,
          options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  Future post(String url,{Map<String, String>? headers,dynamic body,bool isFormData =false}) async{
    try {
      final response = await dio.post(
          url,
          data:isFormData?FormData.fromMap(body):body,
          options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  Future put(String url, {Map<String, String>? headers,dynamic body,isFormData =false}) async{
    try {
      final response = await dio.put(
          url,
          data:isFormData?FormData.fromMap(body):body,
          options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

}