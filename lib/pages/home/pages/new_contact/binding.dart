import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class NewContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewContactsController>(() => NewContactsController());
    Get.lazyPut<NewContactsProvider>(() => NewContactsProvider());
  }
}
