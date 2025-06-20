import 'package:get/get.dart';
import 'package:khadamat/models/fixer_model.dart';
import 'package:khadamat/services/api/fixers/fixers_service.dart';

class FixerController extends GetxController {
  final FixersService fixersService;

  FixerController({required this.fixersService});

  var isLoading = false.obs;
  var fixers = <FixerModel>[].obs;

  Future<void> loadFixersByServiceId(int serviceId) async {
    isLoading.value = true;
    try {
      final response = await fixersService.getFixersByServiceId(serviceId);
      if (response['success'] == true) {
        final List<dynamic> dataList = response['data'];
        fixers.value = dataList.map((e) => FixerModel.fromJson(e)).toList();
      } else {
        throw Exception(response['message'] ?? 'Failed to fetch fixers');
      }
    } catch (e) {
      // Optionally handle or log error
      rethrow;
    } finally {
      isLoading.value = false;
    }
  }
}
