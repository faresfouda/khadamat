import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khadamat/services/api/api_consumer.dart';
import 'package:khadamat/services/api/end_point.dart';
import 'package:mime/mime.dart';

class ImageServices {
  final ApiConsumer apiConsumer;
  ImageServices({required this.apiConsumer});

  Future<Map<String, dynamic>> uploadImage({
    required XFile imagePath,
  }) async {
    print('Uploading file: ${imagePath.path}');

    final mimeType = lookupMimeType(imagePath.path);
    print('Detected MIME type: $mimeType');

    final file = await MultipartFile.fromFile(
      imagePath.path,
      filename: imagePath.name,
      contentType: mimeType != null ? MediaType.parse(mimeType) : null,
    );

    final formData = FormData.fromMap({
      'image': file,
    });

    final response = await apiConsumer.post(
      EndPoint.uploadImage,
      body: formData,
    );

    print('Response: $response');

    if (response['success'] == true) {
      return response;
    } else {
      final errorMsg = response['error']?.toString() ?? 'Image upload failed';
      throw Exception(errorMsg); // 🛠 this fixes the 'bool is not a subtype of String' error
    }
  }

}
Future<XFile?> pickImage() async {
  final ImagePicker _picker = ImagePicker();
  try {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (image != null) {
      final allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'webp'];
      final extension = image.name.split('.').last.toLowerCase();
      final mimeType = lookupMimeType(image.path);

      print('Picked extension: .$extension');
      print('Detected MIME type: $mimeType');

      if (!allowedExtensions.contains(extension)) {
        print('❌ Invalid extension');
        return null;
      }

      if (mimeType == null ||
          !(mimeType.startsWith('image/jpeg') ||
              mimeType.startsWith('image/png') ||
              mimeType.startsWith('image/gif') ||
              mimeType.startsWith('image/webp'))) {
        print('❌ Invalid MIME type');
        return null;
      }
    }

    return image;
  } catch (e) {
    print('Error picking image: $e');
    return null;
  }
}



