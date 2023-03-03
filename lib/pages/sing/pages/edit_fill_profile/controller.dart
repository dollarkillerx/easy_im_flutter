import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingEditFillProfilePageController extends GetxController {
  var dataBirth = TextEditingController();
  var imgPath = "".obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 1,
    );

    // print(image?.path);

    if (image != null) {
      imgPath.value = image.path;
    }
  }
}
