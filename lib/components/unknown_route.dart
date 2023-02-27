import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Unknown Route 404"),
            ElevatedButton(onPressed: () {
              Get.back();
            }, child: Text("Return"))
          ],
        ),
      ),
    );
  }
}
