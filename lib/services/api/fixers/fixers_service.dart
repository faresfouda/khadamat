import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class FixersService{
  final ApiConsumer apiConsumer;
  FixersService({required this.apiConsumer});
  Future<Map<String, dynamic>> getFixersByServiceId(int serviceId) async {
    final response = await apiConsumer.get('${EndPoint.getfixers}$serviceId');
    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'Failed to fetch fixers');
    }
  }
}