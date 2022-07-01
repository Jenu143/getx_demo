import 'package:flutter/material.dart';
import 'package:getx_demo/screens/thri.dart';

class SeconScreen extends StatelessWidget {
  const SeconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('seconde'),
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const thirScreen(),
              ));
            },
            color: Colors.red,
            child: const Text('thir'),
          ),
        ],
      ),
    );
  }
}
