import 'package:get/get.dart';
import 'package:khadamat/models/offer_model.dart';
import 'package:khadamat/models/user.dart';
import 'package:khadamat/services/api/user_data/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController {
  final user_service userService;


  UserController({required this.userService});
  var isLoading = false.obs;
  var user = Rxn<User>();
  var offers = <OfferModel>[].obs;
  Future<void> Loadprofile()async{
    isLoading.value =true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';
    final response = await userService.GetUser(token: token);

    if (token.isEmpty) {
      isLoading.value = false;
      Get.offAllNamed('/login');
    }
    if (response['success'] == true) {
      user.value = User.fromJson(response['data']);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'failed to fetch user data');
    }
  }
  Future<void> getoffers() async {
    isLoading.value = true;
    try {
      final response = await userService.GetOffers();
      if (response['success'] == true) {
        final List<dynamic> dataList = response['data']['services'];
        offers.value = dataList.map((e) => OfferModel.fromJson(e)).toList();
        isLoading.value = false;
      } else {
        isLoading.value = false;
        throw Exception(response['message'] ?? 'failed to fetch user data');
      }
    } catch (e) {
      isLoading.value = false;
      throw Exception('Error fetching offers: $e');
    }
  }
}