import 'package:get/get.dart';
import 'package:khadamat/models/user.dart';
import 'package:khadamat/services/api/auth/auth_service.dart';

class AuthController extends GetxController {
  final auth_service authService;

  AuthController({required this.authService});
  var isLoading = false.obs;
  var user = Rxn<User>();
  Future<void> login(String email, String password) async {
    isLoading.value = true;
    final response = await authService.Login(email: email, password: password);
    if (response['success'] == true) {
      user.value = User.fromJson(response['data']);
      user.value!.token = response['token'];
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['error'] ?? 'Login failed');
    }
  }
  Future<void> register( String name,String email, String password,String confirmPassword) async {
    isLoading.value = true;
    final response = await authService.register(name: name,email: email, password: password, );
    if (response['success'] == true) {
      user.value = User.fromJson(response['data']);
      user.value!.token = response['token'];
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['error'] ?? 'Login failed');
    }
  }
}
