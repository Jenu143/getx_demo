import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/view/api_calling/api_getx_provider.dart';
import 'package:getx_demo/view/api_calling/model.dart';

class ApiGetxController extends GetxController {
  //This instant is use for Getbuilder
  // CustomApiModel<ApiModel> customApiModel = CustomApiModel<ApiModel>();

  //this is instant is use for Obx
  // Rx<CustomApiModel<ApiModel>> customApiModel = CustomApiModel<ApiModel>().obs;

  //this is instant is use for Getx
  Rx<CustomApiModel<ApiModel>> customApiModel = CustomApiModel<ApiModel>().obs;

  GetApi getApi = GetApi();

  @override
  void onInit() {
    getBuilderSink();
    super.onInit();
  }

  //---------------------GetBuilder-----------------------//

  // Future<CustomApiModel<ApiModel>> getBuilderSink() async {
  //   customApiModel = await getApi.fetchData();
  //   update();
  //   return customApiModel;
  // }

//-------------------------Obx----------------------------//

  // Future<CustomApiModel<ApiModel>> getBuilderSink() async {
  //   customApiModel.value = await getApi.fetchData();
  //   return customApiModel.value;
  // }

//-------------------------Getx----------------------------//
  Future<CustomApiModel<ApiModel>> getBuilderSink() async {
    customApiModel.value = await getApi.fetchData();
    return customApiModel.value;
  }
}
