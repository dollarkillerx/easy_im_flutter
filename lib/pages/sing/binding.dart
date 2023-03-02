import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class SingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingPageController>(() => SingPageController());
    Get.lazyPut<SingPageProvider>(() => SingPageProvider());
  }
}