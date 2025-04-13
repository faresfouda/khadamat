import 'package:dio/dio.dart';
import 'package:khadamat/core/api_consumer.dart';
import 'errors/exceptions.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer({required this.dio}){
    dio.options.baseUrl = 'https://api.example.com';
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }
  @override
  Future delete(String url, {Map<String, String>? headers}) async{
    try {
      final response = await dio.delete(url, options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  Future get(String url, {Map<String, String>? headers}) async{
    try {
      final response = await dio.get(url, options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  Future post(String url, {Map<String, String>? headers, body}) async{
    try {
      final response = await dio.post(url, options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

  @override
  Future put(String url, {Map<String, String>? headers, body}) async{
    try {
      final response = await dio.put(url, options: Options(headers: headers));
      return response.data;
    } on DioException catch (e) {
      handelDioExceptions(e);
    }
  }

}