import 'package:easy_im/common/library/local_storage.dart';
import 'package:easy_im/common/routers/app_routes.dart';
import 'package:easy_im/models/users.dart';
import 'package:easy_im/pages/welcome/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  var tabController = PageController(initialPage: 0, keepPage: true);
  var currentIndex = 0;

  WelcomeProvider provider = Get.find();

  turnPage(int index) {
    tabController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: ElasticOutCurve(4));
  }

  @override
  void onInit() async {
    super.onInit();

    String? jwt = LocalStorage.getJWT();
    print(jwt == null);
    if (jwt != null) {
      // 请求用户基本信息
      UserInfo? ui = await provider.userInfo();
      if (ui == null) {
        return;
      }
      LocalStorage.setUserInfo(ui);
      // 成功跳转到home
      Get.offAndToNamed(AppRoutes.Home);
    }
  }

}
