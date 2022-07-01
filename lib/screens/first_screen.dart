import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/seconde_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Get.to(() => const SeconScreen());
            },
            color: Colors.red,
            child: const Text('secode'),
          ),
        ],
      ),
    );
  }
}
