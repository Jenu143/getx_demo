import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/view/api_calling/api_screen.dart';
import 'package:getx_demo/view/check_box/check_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(() => CheckBoxDemo());
              },
              color: Colors.purple.shade200,
              child: const Text('Check Box'),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(() => ApiHomeScreen());
              },
              color: Colors.green.shade200,
              child: const Text('Api Calling'),
            )
          ],
        ),
      ),
    );
  }
}
