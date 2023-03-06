import 'dart:io';
import 'package:easy_im/models/g_response.dart';
import 'package:easy_im/models/users.dart';
import 'package:easy_im/pages/sing/pages/edit_fill_profile/provider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../common/library/img.dart';
import '../../../../common/library/jwt.dart';
import '../../../../common/routers/app_routes.dart';
import '../../../../widgets/dialog.dart';

class SingEditFillProfilePageController extends GetxController {
  final String smsId = Get.arguments["smsId"];
  final String smsCode = Get.arguments["smsCode"];

  var dataBirth = TextEditingController();
  var fullName = TextEditingController();
  var nickName = TextEditingController();
  var email = TextEditingController();
  var about = TextEditingController();
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

  registration() async {
    if (imgPath.value == '') {
      return;
    }

    File file = File(imgPath.value);
    final compressedFile = await compressImage(file, 80);
    UploadFile? upfile = await provider.uploadFile(compressedFile);
    print(upfile);
    if (upfile == null) {
      Get.snackbar("Error", "Service area upgrade");
      return;
      // print(upfile.url);
      // print(upfile.filename);
    }
    await file.delete();

    GResponse gp = await provider.userRegistration(
      fullName.text,
      nickName.text,
      dataBirth.text,
      email.text,
      about.text,
      upfile.filename,
      smsId,
      smsCode,
    );
    if (gp.GetError() != null) {
      Get.dialog(
        DialogWidget('Error', gp.GetError()!.message),
        barrierDismissible: false,
      );
    }
    if (gp.GetData() != null) {
      AuthPayload authPayload = AuthPayload.fromJson(gp.GetData()!);

      await LocalStorage.setJWT(
          authPayload.accessTokenString, authPayload.userID);

      Get.offAllNamed(AppRoutes.Home);
    }
  }
}
