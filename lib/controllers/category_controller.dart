import 'package:get/get.dart';
import 'package:khadamat/models/category_model.dart';
import 'package:khadamat/models/subcategory_model.dart';
import 'package:khadamat/models/top_level_category.dart';
import 'package:khadamat/services/api/category/category_services.dart';

class CategoryController extends GetxController {
  final category_service CategoryService;


  CategoryController({required this.CategoryService});
  var isLoading = false.obs;
  var categories = <TopLevelCategory>[].obs;
  var subCategories = <SubCategory>[].obs;
  var categoryById = <CategoryModel>[].obs;
  Future<void> LoadTopLevelCategory()async{
    isLoading.value =true;
    final response = await CategoryService.GetTopLevelCategory();

    if (response['success'] == true) {
      final List<dynamic> dataList = response['data'];
      categories.value = dataList.map((e) => TopLevelCategory.fromJson(e)).toList();
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'failed to fetch category data');
    }
  }
  Future<void> LoadSubCategory(int categoryId) async {
    isLoading.value = true;
    final response = await CategoryService.GetSubCategory(categoryId);

    if (response['success'] == true) {
      final List<dynamic> dataList = response['data'];
      subCategories.value = dataList.map((e) => SubCategory.fromJson(e)).toList();
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'failed to fetch subcategory data');
    }
  }
  Future<void> LoadCategoryById(int categoryId) async {
    isLoading.value = true;
    final response = await CategoryService.GetCategoryById(categoryId);

    if (response['success'] == true) {
      final List<dynamic> dataList = response['data']['services'];
      categoryById.value = dataList.map((e) => CategoryModel.fromJson(e)).toList();
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'failed to fetch category data');
    }
  }
}