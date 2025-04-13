abstract  class ApiConsumer {
  Future<dynamic> get(String url, {Map<String, String>? headers});
  Future<dynamic> post(String url,{Object? body, Map<String, String>? headers});
  Future<dynamic> put(String url, {Object? body, Map<String, String>? headers});
  Future<dynamic> delete(String url, {Object? body, Map<String, String>? headers,});
}