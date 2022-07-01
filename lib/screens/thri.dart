import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class thirScreen extends StatelessWidget {
  const thirScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String firstController = Get.find(tag: 'tag2');
    return Scaffold(
      appBar: AppBar(
        title: const Text('therd'),
      ),
      body: Column(
        children: [Text(firstController)],
      ),
    );
  }
}
