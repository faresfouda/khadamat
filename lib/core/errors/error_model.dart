class ErrorModel {
  final String message;
  final int? code;

  ErrorModel({required this.message, this.code});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json['status'] ?? 'Unknown error',
      code: json['Error_message'],
    );
  }
}