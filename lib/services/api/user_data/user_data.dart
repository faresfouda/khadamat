import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class user_service {
  final ApiConsumer apiConsumer;

  user_service({required this.apiConsumer});

  Future <Map<String, dynamic>> GetUser({
    required String token,
  }) async {
    final response = await apiConsumer.get(
      EndPoint.profile,
      headers: {
        'Authorization': 'Bearer $token',
      }
    );

    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'failed to fetch user data');
    }
  }
  Future<Map<String, dynamic>> GetOffers() async {
    final response = await apiConsumer.get(
      '${EndPoint.Get_Offers}',
    );
    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'failed to fetch category offers');
    }
  }
}