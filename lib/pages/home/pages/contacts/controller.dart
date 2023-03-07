import 'package:easy_im/pages/home/pages/contacts/provider.dart';
import 'package:get/get.dart';
import '../../../../models/g_response.dart';
import '../../../../models/users.dart';

class ContactsController extends GetxController {
  ContactsProvider provider = Get.find();
  Friendships? friendships;

  @override
  void onInit() async {
    super.onInit();

    GResponse gp = await provider.friendship();
    if (gp.GetError() != null) {
      print(gp.GetError()!.message);
      return;
    }

    if (gp.GetData() != null) {
      Friendships fs = Friendships.fromJson(gp.GetData()!);
      friendships = fs;
      update();
    }
  }
}
