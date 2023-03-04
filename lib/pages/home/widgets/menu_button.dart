import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildMenuButton(String text, int index, Rx<int> actionIndex,
    {Function? onTap}) {
  return GestureDetector(
    onTap: () {
      actionIndex.value = index;
      if (onTap != null) {
        onTap();
      }
    },
    child: Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w600,
          color: index == actionIndex.value ? Colors.white : Color(0xffE0E0E0),
        ),
      ),
      height: 41,
      width: 127,
      alignment: Alignment.topCenter,
      decoration: index == actionIndex.value
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2, color: Colors.white),
              ),
            )
          : BoxDecoration(),
    ),
  );
}
