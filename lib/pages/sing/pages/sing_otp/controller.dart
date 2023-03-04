import 'dart:convert';

import 'package:easy_im/common/routers/app_pages.dart';
import 'package:easy_im/common/routers/app_routes.dart';
import 'package:easy_im/pages/sing/pages/sing_otp/provider.dart';
import 'package:easy_im/widgets/dialog.dart';
import 'package:get/get.dart';
import '../../../../models/g_response.dart';
import '../../../../models/users.dart';

class SingOTPPageController extends GetxController {
  final String phoneNumber = Get.arguments["phone_number"];
  final bool isSingUp = Get.arguments["sign_up"];

  var code = '';
  var smsId = '';
  var duration = 0.obs;

  SingOTPPageProvider provider = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    sendSMS();
    countdown();
  }

  // 倒计时
  countdown() async {
    duration.value = 60;
    for (int i = 0; i < 60; i++) {
      await Future.delayed(const Duration(seconds: 1), () {});
      duration.value--;
      if (duration.value == 0) {
        return;
      }
    }
  }

  sendSMS() async {
    GResponse gp = await provider.sms(phoneNumber);
    if (gp.GetError() != null) {
      Get.dialog(
        DialogWidget('Error', gp.GetError()!.message),
        barrierDismissible: false,
      ).then((value) {
        if (value == 'ok') {
          // 如果点击了确认按钮
          // 在这里添加相关操作
          Get.back();
        } else {
          // 如果点击了取消按钮
          // 在这里添加相关操作
        }
      });
    }

    if (gp.GetData() != null) {
      SendSMS sendSMS = SendSMS.fromJson(gp.GetData()!);
      smsId = sendSMS.smsId;
    }
  }

  checkSMS() async {
    GResponse gp = await provider.checkSMS(smsId, code);
    if (gp.GetError() != null) {
      Get.dialog(
        DialogWidget('Error', gp.GetError()!.message),
        barrierDismissible: false,
      );
    }

    if (gp.GetData() != null) {
      CheckSMS checkSMS = CheckSMS.fromJson(gp.GetData()!);
      print(jsonEncode(checkSMS));
      if (!checkSMS.ok) {
        Get.dialog(
          DialogWidget('Error', 'Wrong verification code'),
          barrierDismissible: false,
        );
      } else {
        Get.offAllNamed(
            AppRoutes.pathJoin([AppRoutes.Sing, AppRoutes.EditFillProfile]));
      }
    }
  }
}
