class EndPoint {
  static const String baseUrl = 'https://mr-fix-backend.onrender.com';
  static const String login = '${baseUrl}/api/v1/auth/login';
  static const String profile = '${baseUrl}/api/v1/users/profile';
  static const String Get_Top_Level_Categories = '${baseUrl}/api/v1/services/categories/top-level';
  static const String Get_Sub_Categories = '${baseUrl}/api/v1/services/categories';
  static const String Get_Category_By_Id = '${baseUrl}/api/v1/services';
}
class ApiKey {
  static String success = 'success';
  static String message = 'message';
  static String data = 'data';
  static String error = 'error';
  static String email = 'email';
  static String password = 'password';
}