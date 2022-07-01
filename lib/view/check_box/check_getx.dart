import 'package:get/state_manager.dart';

class CheckBoxGetController extends GetxController {
  //-----------------GetBuilder------------------//
  //THis method is use when you use GetBuilder
  bool checkboxValueGetBuilder = false;

  void changeCheckValueGetBuilder(bool value) {
    checkboxValueGetBuilder = value;
    update(); //This update is use when getbuilder
  }

  //---------------------Getx-----------------------//
  //THis method is use when you use Getx
  RxBool checkboxValueGetx = false.obs;

  void changeCheckValueGetx(bool value) {
    checkboxValueGetx.value = value;
    // update();  this method is not be use in Obx and Getx
  }

//---------------------Obx-----------------------//
  //This method is use when you use Obx
  RxBool checkboxValueObx = false.obs;

  void changeCheckValueObx(bool value) {
    checkboxValueObx.value = value;
    // update();  this method is not be use in Obx and Getx
  }
}
