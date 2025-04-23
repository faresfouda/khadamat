import 'package:get/get.dart';

class MyLocale implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar" :{
      "1" : "مرحبًا",
      "2" : "كيف حالك اليوم!"
    },
    "en" :{
      "1" : "Hello",
      "2" : "How are today!"
    }
  };

}