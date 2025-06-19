import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class auth_service {
  final ApiConsumer apiConsumer;

  auth_service({required this.apiConsumer});

  Future<Map<String, dynamic>> Login({
    required String email,
    required String password,
  }) async {
    final response = await apiConsumer.post(
      EndPoint.login,
      body: {
        ApiKey.email: email,
        ApiKey.password: password,
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'Login failed');
    }
  }

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await apiConsumer.post(
      EndPoint.register,
      body: {
        ApiKey.name: name,
        ApiKey.email: email,
        ApiKey.password: password,
        ApiKey.role: 'user',
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['error'] ?? 'Register failed');
    }
  }

  Future<Map<String, dynamic>> getCurrentOrder({
    required String token,
  }) async {
    final response = await apiConsumer.get(
      EndPoint.myOrder,
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(
          response['message'] ?? 'Failed to fetch conversation by ID');
    }
  }

  Future updateOrder(
      {required int orderId,
      required String orderCategory,
      required String orderAdress,
      required String orderDetails,
      required String token}) async {
    try {
      final response =
          await apiConsumer.put('${EndPoint.updateOrder}$orderId', body: {
        ApiKey.description: orderDetails ,
        ApiKey.service: {
          ApiKey.name: orderAdress,
          ApiKey.category: {ApiKey.name: orderCategory}
        }
      }, headers: {
        'Authorization': 'Bearer $token',
      });
      print("Raw API Response: ${response.toString()}");
      if (response[ApiKey.success] == true) {
        return response;
      } else {
        print(Exception(response[ApiKey.error] ?? 'Error'));
        throw Exception(response[ApiKey.error] ?? 'Error');
      }
    } on Exception catch (e) {
      print(Exception());
    }
  }
}
