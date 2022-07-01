import 'package:get/get.dart';
import 'package:getx_demo/view/check_box/check_getx.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CheckBoxGetController>(CheckBoxGetController());
    Get.put<String>("keyur", tag: 'tag1');
    Get.put<String>("Hello Hello", tag: "tag2");
  }
}
