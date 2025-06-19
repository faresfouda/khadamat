import 'package:get/get.dart';
import 'package:khadamat/services/image_upload.dart';
import 'package:share_plus/share_plus.dart';

class ImageController extends GetxController {
  final ImageServices imageServices;
  var isLoading = false.obs;
  var imageUrl = ''.obs;

  ImageController({required this.imageServices});

  Future<void> uploadImage(String imagePath) async {
    final imageFile = XFile(imagePath);
    final response = await imageServices.uploadImage(
      imagePath: imageFile,
    );
    if (response['success'] ==true){
      isLoading.value = true;
      imageUrl.value = response['data']['image_url'];
      isLoading.value = false;
    } else {
      isLoading.value = false;
      throw Exception(response['error']?.toString() ?? 'Image upload failed');
    }
  }
}
