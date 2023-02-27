import 'package:easy_im/pages/welcome/widgets/page_one.dart';
import 'package:easy_im/pages/welcome/widgets/page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(builder: (controller) {
      return Scaffold(
        body: PageView(
          controller: controller.tabController,
          onPageChanged: (index) {
            controller.currentIndex = index;
          },
          children: [
            GestureDetector(
              onTap: () {
                controller.turnPage(1);
              },
              child: PageOne(),
            ),
            PageTwo(
              onTap: () {
                controller.turnPage(2);
              },
              img: 'assets/images/Illustration1.png',
              title: "Easy chat with your friends",
              text:
                  'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.',
            ),
            PageTwo(
              onTap: () {
                controller.turnPage(3);
              },
              img: 'assets/images/Illustration2.png',
              title: "Video call with your community",
              text:
                  'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.',
            ),
            PageTwo(
              onTap: () {
                controller.turnPage(3);
              },
              img: 'assets/images/Illustration3.png',
              title: "Get notified when someone chat you",
              text:
                  'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.',
            ),
          ],
        ),
      );
    });
  }
}
