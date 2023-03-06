import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String text;
  final double height;
  final Color color;
  final VoidCallback? onPressed;

  const CButton({
    super.key,
    required this.text,
    required this.height,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
          height: height,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
