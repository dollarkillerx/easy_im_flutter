import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'controller.dart';

class SingPage extends GetView<SingPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingPageController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    SizedBox(
                      height: 40,
                    ),
                    Obx(() => Text(
                          controller.isSingUp.value
                              ? "Create New Account"
                              : "Login to Your Account",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    InternationalPhoneNumberInput(
                      initialValue: PhoneNumber(isoCode: 'US'),
                      focusNode: controller.phoneFocusNode,
                      onInputChanged: (PhoneNumber value) {
                        if (value.phoneNumber != null) {
                          controller.phoneNumber = value.phoneNumber!;
                        }
                      },
                      onSaved: (val) {
                        controller.showLab.value = true;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Checkbox(
                            side: MaterialStateBorderSide.resolveWith(
                              (states) =>
                                  BorderSide(width: 3.0, color: Colors.blue),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: controller.checkboxSelected.value,
                            onChanged: (val) {
                              controller.checkboxSelected.value =
                                  !controller.checkboxSelected.value;
                            })),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.subIn();
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Obx(() => Text(
                              controller.isSingUp.value ? "Sign up" : "Sign in",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() => controller.showLab.value
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => Text(
                                controller.isSingUp.value
                                    ? 'Already have on account?   '
                                    : 'Don\'t have an account?   ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff9e9e9e),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              controller.isSingUp.value =
                                  !controller.isSingUp.value;
                            },
                            child: Obx(() => Text(
                                  controller.isSingUp.value
                                      ? 'Sign in'
                                      : 'Sign up',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff246bfd),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  : SizedBox()),
            ],
          ),
        ),
      );
    });
  }
}
