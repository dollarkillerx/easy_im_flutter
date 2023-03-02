import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SingOTPPage extends GetView<SingOTPPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingOTPPageController>(builder: (controller) {
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
            "OTP Code Verification",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Text("OTP"),
          ),
        ),
      );
    });
  }
}
