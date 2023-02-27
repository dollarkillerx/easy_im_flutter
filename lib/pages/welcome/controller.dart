import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  var tabController = PageController(initialPage: 0, keepPage: true);
  var currentIndex = 0;

  turnPage(int index) {
    tabController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: ElasticOutCurve(4));
  }
}
