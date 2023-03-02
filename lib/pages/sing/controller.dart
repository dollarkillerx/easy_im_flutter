import 'package:easy_im/common/routers/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SingPageController extends GetxController {
  // final bool isSingUp = Get.arguments["sign_up"];
  var isSingUp = false.obs;
  var checkboxSelected = false.obs;
  var showLab = true.obs;
  late FocusNode phoneFocusNode;
  var phoneNumber = "";

  @override
  void onInit() {
    super.onInit();

    phoneFocusNode = FocusNode();
    phoneFocusNode.addListener(() {
      if (phoneFocusNode.hasFocus) {
        // 得到焦点
        showLab.value = false;
      } else {
        showLab.value = true;
      }
    });
  }

  @override
  void dispose() {
    phoneFocusNode.dispose();
    super.dispose();
  }

  subIn() {
    if (phoneNumber.trim() == "") {
      Get.snackbar("Notice", "Phone number Is empty");
      return;
    }

    Get.toNamed(AppRoutes.pathJoin([AppRoutes.Sing, AppRoutes.SingOTP]),
        arguments: {
          'phone_number': phoneNumber,
          'sign_up': isSingUp.value,
        });
  }
}
