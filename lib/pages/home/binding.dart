import 'package:easy_im/pages/home/pages/contacts/controller.dart';
import 'package:easy_im/pages/home/pages/contacts/provider.dart';
import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeProvider>(() => HomeProvider());
    Get.lazyPut<ContactsController>(() => ContactsController());
    Get.lazyPut<ContactsProvider>(() => ContactsProvider());
  }
}
