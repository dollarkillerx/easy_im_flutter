import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class SingOTPPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingOTPPageController>(() => SingOTPPageController());
    Get.lazyPut<SingOTPPageProvider>(() => SingOTPPageProvider());
  }
}