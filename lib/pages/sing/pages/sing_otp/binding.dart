import 'provider.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SingOTPPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingOTPPageController>(() => SingOTPPageController());
    Get.lazyPut<SingOTPPageProvider>(() => SingOTPPageProvider());
  }
}