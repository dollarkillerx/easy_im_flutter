import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class SingEditFillProfilePage
    extends GetView<SingEditFillProfilePageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingEditFillProfilePageController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(),
          // leading: IconButton(
          //   onPressed: () {
          //     Get.back();
          //   },
          //   icon: Icon(
          //     Icons.arrow_back_ios_outlined,
          //     color: Colors.black,
          //   ),
          // ),
          title: Text(
            "Fill Your Profile",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              child: Obx(() {
                                if (controller.imgPath.value != "") {
                                  return Image.file(
                                    File(controller.imgPath.value),
                                    fit: BoxFit.cover,
                                  );
                                } else {
                                  return Image.asset(
                                    'assets/images/164102.png',
                                    fit: BoxFit.fill,
                                  );
                                }
                              }),
                              width: 200,
                              height: 200,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                child:
                                    Image.asset('assets/images/EditSquare.png'),
                              ),
                            )
                          ],
                        ),
                        width: 200,
                      ),
                      onTap: () {
                        controller.getImage();
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey, //<-- SEE HERE
                        ),
                        fillColor: Colors.grey.withOpacity(0.15),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        labelText: 'Nickname',
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey, //<-- SEE HERE
                        ),
                        fillColor: Colors.grey.withOpacity(0.15),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            //get today's date
                            firstDate: DateTime(2000),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));
                        if (pickedDate != null) {
                          controller.dataBirth.text =
                              '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                        }
                      },
                      controller: controller.dataBirth,
                      readOnly: true,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey, //<-- SEE HERE
                        ),
                        fillColor: Colors.grey.withOpacity(0.15),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey, //<-- SEE HERE
                          ),
                          fillColor: Colors.grey.withOpacity(0.15),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          )),
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        labelText: 'About',
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey, //<-- SEE HERE
                        ),
                        fillColor: Colors.grey.withOpacity(0.15),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 0.0),
                        ),
                      ),
                      style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.registration();
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3062C8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
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
