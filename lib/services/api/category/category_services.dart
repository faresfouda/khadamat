import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';

class category_service {
  final ApiConsumer apiConsumer;

  category_service({required this.apiConsumer});

  Future <Map<String, dynamic>> GetTopLevelCategory() async {
    final response = await apiConsumer.get(
        EndPoint.Get_Top_Level_Categories,
    );
    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'failed to fetch top-level categories');
    }
  }
  Future<Map<String, dynamic>> GetSubCategory(int categoryId) async {
    final response = await apiConsumer.get(
      '${EndPoint.Get_Sub_Categories}/$categoryId/children',
    );
    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'failed to fetch subcategory data');
    }
  }
  Future<Map<String, dynamic>> GetCategoryById(int categoryId) async {
    final response = await apiConsumer.get(
      '${EndPoint.Get_Category_By_Id}?category_id=$categoryId',
    );
    if (response['success'] == true) {
      return response;
    } else {
      throw Exception(response['message'] ?? 'failed to fetch category data');
    }
  }
}