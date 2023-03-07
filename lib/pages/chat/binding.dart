import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
    Get.lazyPut<ChatProvider>(() => ChatProvider());
  }
}