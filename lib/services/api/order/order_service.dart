import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class OrderService {
  final ApiConsumer apiConsumer;
  OrderService({required this.apiConsumer});

  Future <Map<String, dynamic>> createOrder({
    required String service_id,
    required String orderAdress,
    required String orderDetails,
    required String token,
  }) async {
    final response = await apiConsumer.post(
      EndPoint.createOrder,
      body: {
        'service_id': service_id,
        'scheduled_at': DateTime.now().toIso8601String(),
        'location': orderAdress,
        'description': orderDetails,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'Failed to create order');
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
        'location': orderAdress,
      }, headers: {
        'Authorization': 'Bearer $token',
      });
      print("Raw API Response: ${response.toString()}");
      if (response[ApiKey.success] == true) {
        return response;
      } else {
        throw Exception(response[ApiKey.error] ?? 'Error');
      }
    } on Exception catch (e) {
      print(Exception());
    }
  }
}