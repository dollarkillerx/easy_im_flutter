import 'package:easy_im/widgets/opt_form.dart';
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
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Column(
                    children: [
                      Text('Code has been send to ${controller.phoneNumber}'),
                      OptForm(),
                      Row(
                        children: [
                          Text("Resend code in"),
                          Text("55"),
                          Text("s"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Verify',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
