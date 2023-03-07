import 'package:easy_im/constants/colors.dart';
import 'package:easy_im/pages/chat/widgets/bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class ChatPage extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ImColors.prColor,
        body: Column(
          children: [
            SafeArea(child: buildHeaders(controller)),
            Expanded(
                flex: 10,
                child: Container(
                  color: Colors.white,
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BubbleWidget(
                              text:
                                  'Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                              text:
                                  'Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                              text:
                                  'Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                              text:
                                  'Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(text: 'Hi, good morning Jenny... 😁😁'),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                          BubbleWidget(
                            text: 'this is text',
                            direction: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Expanded(
                child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: TextField(
                        // 兼容多行输入 maxLines, keyboardType
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        // 多行模式
                        cursorColor: Colors.black,
                        // 光标颜色
                        // controller: _controller,
                        decoration: InputDecoration(
                          filled: true, // 填充背景
                          fillColor: Colors.grey[200],
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder,
                        ),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  Expanded(
                      child: CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.send,
                      size: 30,
                    ),
                  ))
                ],
              ),
            ))
          ],
        ),
      );
    });
  }

  final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(16));

  Container buildHeaders(ChatController controller) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                controller.friendship.nickName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.video_camera_back_outlined,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.unfold_more_outlined,
                color: Colors.white,
                size: 28,
              ),
            ],
          )
        ],
      ),
    );
  }
}
