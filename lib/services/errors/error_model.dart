

import 'package:khadamat/services/api/end_point.dart';

class ErrorModel {
  final String message;
  final int? code;

  ErrorModel({required this.message, this.code});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json[ApiKey.status] ?? 'Unknown error',
      code: json[ApiKey.error] ?? 0,
    );
  }
}