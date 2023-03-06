import 'package:easy_im/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../widgets/cbutton.dart';

class Welcome extends StatelessWidget {
  final GestureTapCallback? onTap;

  const Welcome({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/Group.png",
              width: 273.5,
              height: 277.97,
            ),
          )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Welcome! 👋',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff246bfd),
                ),
              ),
              Text(
                'Hichat connects you with family and friends. Start chatting now!',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff212121),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              CButton(
                text: 'Start New Chat',
                height: 55,
                color: ImColors.bgColor,
                onPressed: onTap,
              )
            ],
          ))
        ],
      ),
    );
  }
}
