import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  final String title;
  final String text;

  DialogWidget(this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(text),
      actions: <Widget>[
        ElevatedButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.pop(context, 'ok');
          },
        ),
      ],
    );
  }
}
