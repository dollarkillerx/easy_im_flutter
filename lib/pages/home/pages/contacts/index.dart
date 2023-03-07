import 'package:easy_im/common/routers/app_routes.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/contacts_item.dart';
import 'controller.dart';

class ContactsPage extends GetView<ContactsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactsController>(builder: (controller) {
      return Container(
          color: Colors.white,
          height: double.maxFinite,
          width: double.maxFinite,
          child: controller.friendships == null
              ? Container(
                  child: Center(
                    child: SpinKitFadingCube(
                      color: Colors.blue,
                      size: 60.0,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 380,
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.groups),
                                radius: 28,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'New Group',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.NewContact);
                          },
                          child: Container(
                            height: 60,
                            width: 380,
                            margin: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.group_add_outlined),
                                  radius: 28,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'New Contact',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        ...controller.friendships!.friendships.map((element) {
                          return ContactsItem(
                            element: element,
                          );
                        }),
                      ],
                    ),
                  ),
                ));
    });
  }
}
