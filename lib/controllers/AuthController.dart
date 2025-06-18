import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:khadamat/models/OrderModel.dart';
import 'package:khadamat/models/UserModel.dart';
import 'package:khadamat/services/api/auth/auth_service.dart';
import 'package:khadamat/services/api/end_point.dart';

class AuthController extends GetxController {
  final auth_service authService;
  AuthController({required this.authService});
  var isLoading = false.obs;
  String token = '';
  var order = Rxn<Ordermodel>();
  var user = Rxn<User>();
  var MyCurrentOrder = <Map<String, dynamic>>[].obs;
  Future<void> login(String email, String password) async {
    isLoading.value = true;
    final response = await authService.Login(email: email, password: password);
    if (response[ApiKey.success] == true) {
      user.value = User.fromJson(response[ApiKey.data]);
      user.value!.token = response[ApiKey.data][ApiKey.token];
      user.value!.name = response[ApiKey.data][ApiKey.user][ApiKey.name];
      token = response[ApiKey.data][ApiKey.token];
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response[ApiKey.error] ?? 'Login failed');
    }
  }

  Future<void> register(String name, String email, String password,
      String confirmPassword) async {
    isLoading.value = true;
    final response = await authService.register(
      name: name,
      email: email,
      password: password,
    );
    if (response[ApiKey.success] == true) {
      user.value = User.fromJson(response[ApiKey.data]);
      user.value!.token = response[ApiKey.data][ApiKey.token];
      user.value!.name = response[ApiKey.data][ApiKey.user][ApiKey.name];
      token = response[ApiKey.data][ApiKey.token];

      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response[ApiKey.error] ?? 'Login failed');
    }
  }

  Future Currentorder() async {
    isLoading.value = true;
    try {
      final response = await authService.getCurrentOrder(Token: token);
      MyCurrentOrder.value = (response['data']['orders']);
      order.value = Ordermodel.fromjson(response['data']);
    } on Exception catch (e) {
      print(e);
    }
    print(MyCurrentOrder);
    isLoading.value = false;
  }
}
