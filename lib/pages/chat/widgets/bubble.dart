import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class BubbleWidget extends StatelessWidget {
  final String text;
  final TextDirection direction; // 文字方向  自己他人

  const BubbleWidget(
      {Key? key, required this.text, this.direction = TextDirection.ltr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: direction == TextDirection.ltr
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: Container()),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 380,
                      padding: EdgeInsets.all(10),
                      child: SelectableText(text),
                      decoration: BoxDecoration(
                        color: ImColors.prColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(3)),
                      ),
                    ))
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 380,
                      padding: EdgeInsets.all(10),
                      child: SelectableText(text),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(3),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                    )),
                Expanded(child: Container()),
              ],
            ),
    );
  }
}
