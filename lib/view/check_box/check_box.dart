import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_demo/screens/first_screen.dart';
import 'package:getx_demo/view/check_box/check_getx.dart';

class CheckBoxDemo extends StatelessWidget {
  //This controller is assign when you use Obx
  CheckBoxGetController controllerObx = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ));
              },
              color: Colors.red,
              child: const Text('first'),
            ),
            //This method is GetBuilder
            //You can't be initialize controller in above build method
            GetBuilder<CheckBoxGetController>(
              builder: (a) {
                //controllerBuolder is a name you can defind it's your self
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('GetBuilder : '),
                    Checkbox(
                      value: a.checkboxValueGetBuilder,
                      onChanged: (value) {
                        a.changeCheckValueGetBuilder(value!);
                      },
                    ),
                  ],
                );
              },
            ),
            //This method is Obx
            Obx(
              () {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Obx : '),
                    Checkbox(
                      value: controllerObx.checkboxValueObx.value,
                      onChanged: (value) {
                        controllerObx.changeCheckValueObx(value!);
                      },
                    ),
                  ],
                );
              },
            ),
            //This method is Getx
            //You can't be initialize controller in above build method
            GetX<CheckBoxGetController>(
              builder: (controllerGetx) {
                //controllerGetx is a name you can defind it's your self
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Getx : '),
                    Checkbox(
                      value: controllerGetx.checkboxValueGetx.value,
                      onChanged: (value) {
                        controllerGetx.changeCheckValueGetx(value!);
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
