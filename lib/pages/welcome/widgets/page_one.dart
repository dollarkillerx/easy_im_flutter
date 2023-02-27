import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
  });

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
            height: 850,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(130)),
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
                    Colors.deepPurple.shade700,
                    Color(0xffF7F7FF),
                    // Color(0xffFCFCFF),
                  ]),
            ),
          ),
          Container(
            height: 750,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(130)),
            ),
            child: Stack(
              children: [
                Align(
                  child: Image.asset('assets/images/em1.png'),
                  alignment: Alignment(-0.3, -0.7),
                ),
                Align(
                  child: Image.asset(
                    'assets/images/em2.png',
                  ),
                  alignment: Alignment(0.8, -0.4),
                ),
                Align(
                  child: Image.asset(
                    'assets/images/em3.png',
                  ),
                  alignment: Alignment(-1, -0.3),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Align(
                  child: Image.asset(
                    'assets/images/em4.png',
                  ),
                  alignment: Alignment(-0.7, 1),
                ),
                Align(
                  child: Image.asset(
                    'assets/images/em5.png',
                  ),
                  alignment: Alignment(1, 1.2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}