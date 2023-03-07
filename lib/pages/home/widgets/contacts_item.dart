import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/routers/app_routes.dart';
import '../../../models/users.dart';

class ContactsItem extends StatelessWidget {
  final UserInfo element;

  const ContactsItem({
    super.key, required this.element,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.Chat, arguments: {
          "friendship": element,
        });
      },
      child: Container(
        height: 60,
        width: 380,
        margin: EdgeInsets.symmetric(
            horizontal: 24, vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage:
              NetworkImage(element.avatar),
              radius: 28,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  '${element.nickName}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${element.account}',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff616161),
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
