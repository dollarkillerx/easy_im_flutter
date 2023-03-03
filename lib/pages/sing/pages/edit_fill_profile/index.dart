import 'package:easy_im/widgets/opt_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SingEditFillProfilePage extends GetView<SingEditFillProfilePageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingEditFillProfilePageController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Fill Your Profile",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Text("hello world"),
        ),
      );
    });
  }
}
