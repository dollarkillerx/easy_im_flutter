import 'package:easy_im/constants/colors.dart';
import 'package:easy_im/pages/home/pages/contacts/index.dart';
import 'package:easy_im/pages/home/pages/welcome/welcome.dart';
import 'package:easy_im/pages/home/widgets/headers.dart';
import 'package:easy_im/pages/home/widgets/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ImColors.bgColor,
        body: Column(
          children: [
            SafeArea(child: Header()),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildMenuButton('Chats', 0, controller.actionIndex),
                    buildMenuButton('Contacts', 1, controller.actionIndex),
                  ],
                )),
            Obx(() => Expanded(
                    child: IndexedStack(
                  index: controller.actionIndex.value,
                  children: [
                    Welcome(
                      onTap: () {},
                    ),
                    ContactsPage(),
                  ],
                )))
          ],
        ),
      );
    });
  }
}
