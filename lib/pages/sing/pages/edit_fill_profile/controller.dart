import 'dart:io';

import 'package:easy_im/models/g_response.dart';
import 'package:easy_im/pages/sing/pages/edit_fill_profile/provider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingEditFillProfilePageController extends GetxController {
  var dataBirth = TextEditingController();
  var imgPath = "".obs;

  SingEditFillProfilePageProvider provider = Get.find();

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

  sub() async {
    if (imgPath.value == '') {
      return;
    }
    File file = File(imgPath.value);
    UploadFile? up = await provider.uploadFile(file);
    if (up != null) {
      print(up.url);
    }
    print('rc');
  }
}
