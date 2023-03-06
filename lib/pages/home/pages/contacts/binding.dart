import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class ContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactsController>(() => ContactsController());
    Get.lazyPut<ContactsProvider>(() => ContactsProvider());
  }
}