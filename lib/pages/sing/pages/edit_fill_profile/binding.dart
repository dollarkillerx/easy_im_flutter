import 'provider.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SingEditFillProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingEditFillProfilePageController>(() => SingEditFillProfilePageController());
    Get.lazyPut<SingEditFillProfilePageProvider>(() => SingEditFillProfilePageProvider());
  }
}