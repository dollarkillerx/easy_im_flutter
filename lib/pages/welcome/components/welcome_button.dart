import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Image.asset(
        'assets/icons/IIIustrationButton.png',
        fit: BoxFit.cover,
      ),
    );
  }
}