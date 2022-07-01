import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/home_screen.dart';

import 'biniding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
