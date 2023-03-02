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

}
