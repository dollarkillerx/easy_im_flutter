import 'package:get/get.dart';

class SingOTPPageController extends GetxController {
  final String phoneNumber = Get.arguments["phone_number"];
  final bool isSingUp = Get.arguments["sign_up"];


  @override
  void onInit() {
    super.onInit();
  }


}
