import 'package:flutter/material.dart';

import '../components/welcome_button.dart';

class PageTwo extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String img;
  final String title;
  final String text;

  const PageTwo(
      {Key? key,
      required this.onTap,
      required this.img,
      required this.title,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.black,
              border: Border.all(color: Colors.black),
              gradient: LinearGradient(
                  //渐变位置
                  begin: Alignment.topCenter, //右上
                  end: Alignment.bottomCenter, //左下
                  stops: [
                    0.0,
                    1.0,
                  ], //[渐变起始点, 渐变结束点]
                  //渐变颜色[始点颜色, 结束颜色]
                  colors: [
                    Colors.deepPurple.shade600,
                    Color(0xffF7F7FF),
                    // Color(0xffFCFCFF),
                  ]),
            ),
          ),
          Container(
            height: 800,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(130)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(img),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(text,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: this.onTap,
              child: WelcomeButton(),
            ),
          )
        ],
      ),
    );
  }
}
