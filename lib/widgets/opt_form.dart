import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OptForm extends StatelessWidget {
  final int length;
  ValueChanged<String>? onSave;
  List<int> code = [];

  OptForm({Key? key, required this.length, this.onSave}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> wg = [];

    code = List<int>.generate(length, (index) => 0);

    code.asMap().forEach((key, value) {
      wg.add(SizedBox(
        height: 61,
        width: 83,
        child: TextFormField(
          cursorWidth: 0,
          onChanged: (value) {
            if (value.length == 1) {
              code[key] = int.parse(value.trim());
              var r = "";
              code.forEach((element) {
                r += element.toString();
              });

              if (onSave != null) {
                onSave!(r);
              }

              FocusScope.of(context).nextFocus();
            }
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff246BFD).withOpacity(0.1),
            // border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              // width: 0.0 produces a thin "hairline" border
              borderRadius: BorderRadius.circular(25.7),
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
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
      ));
    });

    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: wg,
    ));
  }
}
