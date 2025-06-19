import 'package:get/get.dart';
import 'package:khadamat/models/OrderModel.dart';
import 'package:khadamat/models/user.dart';
import 'package:khadamat/services/api/auth/auth_service.dart';
import 'package:khadamat/services/api/end_point.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final auth_service authService;

  AuthController({required this.authService});
  var isLoading = false.obs;
  var user = Rxn<User>();
  var order = Rxn<Ordermodel>();
  var MyCurrentOrder = <Map<String, dynamic>>[].obs;
  var token = ''.obs;

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    final response = await authService.Login(email: email, password: password);

    if (response['success'] == true) {
      user.value = User.fromJson(response['data']['user']);
      user.value!.token = response['data']['token'];
      isLoading.value = false;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', user.value!.token!);
      await prefs.setString('role', response['data']['user']['role'] ?? 'user');
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'Login failed');
    }
  }

  Future<void> register(String name, String email, String password) async {
    isLoading.value = true;
    final response = await authService.register(
      name: name,
      email: email,
      password: password,
    );

    if (response['success'] == true) {
      user.value = User.fromJson(response['data']['user']);
      user.value!.token = response['data']['token'];
      token = user.value!.token as RxString;
      isLoading.value = false;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', user.value!.token!);
      await prefs.setString('role', response['data']['user']['role'] ?? 'user');
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'Registration failed');
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('role');
    user.value = null;
  }

  Future Currentorder() async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';
    final response = await authService.getCurrentOrder(token: token);
    if (response['success'] == true) {
      MyCurrentOrder.value =
          List<Map<String, dynamic>>.from(response['data']['orders']);
      order.value = Ordermodel.fromJson(response['data']);
    } else {
      isLoading.value = false;
      throw Exception(response['message'] ?? 'Failed to fetch current orders');
    }
  }

  Future updateOrder(int orderid, String orderCategory, String orderAdress,
      String orderDetails) async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';
    try {
      final response = await authService.updateOrder(
          orderId: orderid,
          orderCategory: orderCategory,
          orderAdress: orderAdress,
          orderDetails: orderDetails,
          token: token);
      if (response['success'] == true) {
        MyCurrentOrder.value =
            List<Map<String, dynamic>>.from(response['data']['orders']);
        order.value = Ordermodel.fromJson(response['data']['order']);
        isLoading.value = false;
      } else {
        throw Exception(
            response['error'] ?? 'Failed to fetch current orders');
      }
    } on Exception catch (e) {
      print(Exception());
    }
  }
}
