import 'package:easy_im/widgets/opt_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/cbutton.dart';
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
          centerTitle: false,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 106,
                      ),
                      Text(
                        'Code has been send to ${controller.phoneNumber}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      OptForm(
                        onSave: (val) {
                          controller.code = val;
                        },
                        length: 4,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Obx(() {
                        if (controller.duration.value == 0) {
                          return ElevatedButton(
                            onPressed: () {
                              controller.sendSMS();
                              controller.countdown();
                            },
                            child: Container(
                              height: 55,
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'Resend',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff3062C8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          );
                        } else {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Resend code in ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Text('${controller.duration.value}',
                                  style: TextStyle(
                                    color: Color(0xff246BFD),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  )),
                              Text(" s",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  )),
                            ],
                          );
                        }
                      })
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CButton(
                  onPressed: () {
                    controller.checkSMS();
                  },
                  text: 'Verify',
                  height: 55,
                  color: Color(0xff3062C8),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
