import 'package:easy_im/common/routers/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class ContactsPage extends GetView<ContactsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactsController>(builder: (controller) {
      return SafeArea(
          child: Center(
        child: Text("hello world"),
      ));
    });
  }
}
