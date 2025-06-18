class EndPoint {
  static const String baseUrl = 'https://mr-fix-backend.onrender.com/';
  static const String login = '${baseUrl}api/v1/auth/login';
  static const String register = '${baseUrl}api/v1/auth/register';
}

class ApiKey {
  static String name = 'name';
  static String status = 'status';
  static String message = 'message';
  static String data = 'data';
  static String error = 'error';
  static String email = 'email';
  static String password = 'password';
  static String role = 'role';
}
