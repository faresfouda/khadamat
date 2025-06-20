class EndPoint {
  static const String baseUrl = 'https://mr-fix-backend.onrender.com';
  static const String login = '$baseUrl/api/v1/auth/login';
  static const String profile = '$baseUrl/api/v1/users/profile';
  static const String register = '${baseUrl}/api/v1/auth/register';
  static const String Get_Top_Level_Categories = '${baseUrl}/api/v1/services/categories/top-level';
  static const String Get_Sub_Categories = '${baseUrl}/api/v1/services/categories';
  static const String Get_Category_By_Id = '${baseUrl}/api/v1/services';
  static const String chatConversation = '${baseUrl}/api/v1/messages/conversations';
  static const String Get_Conversation_By_Id = '${baseUrl}/api/v1/messages/conversation';
  static const String send_message = '${baseUrl}/api/v1/messages';
  static const String myOrder = '${baseUrl}/api/v1/orders/my-orders';
  static const String Get_Offers = '${baseUrl}/api/v1/services';
  static const String Get_Services = '${baseUrl}/api/v1/services';
  static const String uploadImage = '${baseUrl}/api/v1/upload/single';
  static const String updateOrder = '${baseUrl}/api/v1/orders/';
  static const String createOrder = '${baseUrl}/api/v1/orders';
  static const String getfixers = '${baseUrl}/api/v1/fixers/by-service/';

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
  static String id = 'id';
  static String user_id = 'user_id';
  static String service_id = 'service_id';
  static String scheduled_at = 'scheduled_at';
  static String location = 'location';
  static String scheduldescriptioned_at = 'description';
  static String created_at = 'created_at';
  static String updated_at = 'updated_at';
  static String before_images = 'before_images';
  static String after_images = 'after_images';
  static String problem_images = 'problem_images';
  static String fixer = 'fixer';
  static String service = 'service';
  static String category = 'category';
  static String orders = 'orders';
  static String success = 'success';
  static String token = 'token';
  static String user = 'user';
  static String description = 'description';
}
