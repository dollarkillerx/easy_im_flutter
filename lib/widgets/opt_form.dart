import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OptForm extends StatelessWidget {
  const OptForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 61,
          width: 83,
          child: TextField(
            cursorWidth: 0,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff246BFD).withOpacity(0.1),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
                borderRadius: BorderRadius.circular(25.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xff246BFD).withOpacity(0.8), width: 2),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
            style: Theme.of(context).textTheme.titleLarge,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 61,
          width: 83,
          child: TextField(
            cursorWidth: 0,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff246BFD).withOpacity(0.1),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0),
                borderRadius: BorderRadius.circular(25.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xff246BFD).withOpacity(0.8), width: 2),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
            style: Theme.of(context).textTheme.titleLarge,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 61,
          width: 83,
          child: TextField(
            cursorWidth: 0,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff246BFD).withOpacity(0.1),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0),
                borderRadius: BorderRadius.circular(25.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xff246BFD).withOpacity(0.8), width: 2),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
            style: Theme.of(context).textTheme.titleLarge,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 61,
          width: 83,
          child: TextField(
            cursorWidth: 0,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff246BFD).withOpacity(0.1),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0),
                borderRadius: BorderRadius.circular(25.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xff246BFD).withOpacity(0.8), width: 2),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
            style: Theme.of(context).textTheme.titleLarge,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ],
    ));
  }
}
