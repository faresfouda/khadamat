import 'package:khadamat/services/api/end_point.dart';

class ErrorModel {
  final bool message;
  final String? code;

  ErrorModel({required this.message, this.code});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json[ApiKey.success] ?? 'Unknown error',
      code: json[ApiKey.error] ?? 0,
    );
  }
}