import 'package:get/get.dart';
import 'package:khadamat/models/user.dart';
import 'package:khadamat/services/api/auth/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final auth_service authService;

  AuthController({required this.authService});
  var isLoading = false.obs;
  var user = Rxn<User>();
  Future<void> login(String email, String password)async{
    isLoading.value =true;
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
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('role');
    user.value = null;
  }

}