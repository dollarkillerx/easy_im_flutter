import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
    Get.lazyPut<WelcomeProvider>(() => WelcomeProvider());
  }
}