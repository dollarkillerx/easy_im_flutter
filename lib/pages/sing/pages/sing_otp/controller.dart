import 'package:get/get.dart';

class SingOTPPageController extends GetxController {
  final String phoneNumber = Get.arguments["phone_number"];
  final bool isSingUp = Get.arguments["sign_up"];
  var duration = 0.obs;


  @override
  void onInit() {
    super.onInit();
    _countdown();
  }

  // 倒计时
  _countdown() async {
    duration.value = 60;
    for (int i = 0; i < 60; i++) {
      await Future.delayed(const Duration(seconds: 1), () {});
      duration.value--;
      if (duration.value == 0) {
        return;
      }
    }
  }
}
