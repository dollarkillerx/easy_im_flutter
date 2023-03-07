import 'package:easy_im/constants/colors.dart';
import 'package:easy_im/pages/home/widgets/contacts_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/routers/app_routes.dart';
import 'controller.dart';

class NewContactsPage extends GetView<NewContactsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewContactsController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ImColors.bgColor,
        body: Column(
          children: [
            buildHeader(),
            Expanded(
                child: Container(
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
                children: [
                  ...?controller.searchUsers?.users.map((e) => Container(
                        child: ContactsItem(
                          onTap: () {
                            Get.toNamed(AppRoutes.Chat, arguments: {
                              "friendship": e,
                            });
                          },
                          element: e,
                        ),
                      )),
                ],
              ),
            )),
          ],
        ),
      );
    });
  }

  SafeArea buildHeader() {
    return SafeArea(
        child: Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: SizedBox(
                  height: 55,
                  width: 100,
                  child: TextFormField(
                    onChanged: (val) {
                      controller.onChangeSelectContactController(val);
                    },
                    controller: controller.selectContactController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Select Contact',
                    ),
                  ),
                ),
                flex: 2,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search_outlined,
                        size: 30,
                      ),
                      color: Colors.white),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
