import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class auth_service {
  final ApiConsumer apiConsumer;

  auth_service({required this.apiConsumer});

  Future <Map<String, dynamic>> Login({
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
}