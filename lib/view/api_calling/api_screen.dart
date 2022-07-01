import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_getx.dart';

class ApiHomeScreen extends StatelessWidget {
  //This instant use when you use GetBuilder
  ApiGetxController apiGetxController = ApiGetxController();
  //This instant use when you use Obx
  ApiGetxController apiGetxControllerObx = Get.put(ApiGetxController());
  //This instant use when you use Gtx
  ApiGetxController apiGetxControllerGetx = Get.put(ApiGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Calling'),
      ),
      body:
          //------------------this buider is use for GetBuilder --------------------//
          //     GetBuilder<ApiGetxController>(
          //   init: apiGetxController,
          //   builder: (controller) {
          //     if (controller.customApiModel.data == null) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else {
          //       return ListView.builder(
          //         shrinkWrap: true,
          //         itemCount: controller.customApiModel.data!.result.length,
          //         itemBuilder: (context, index) {
          //           return Text(
          //               controller.customApiModel.data!.result[index].title);
          //         },
          //       );
          //     }
          //   },
          // ),
//--------------------------This builder use fot Obx ------------------------//
          //     Obx(
          //   () {
          //     if (apiGetxControllerObx.customApiModel.value.data == null) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else {
          //       return ListView.builder(
          //         shrinkWrap: true,
          //         itemCount:
          //             apiGetxControllerObx.customApiModel.value.data!.result.length,
          //         itemBuilder: (context, index) {
          //           return Text(apiGetxControllerObx
          //               .customApiModel.value.data!.result[index].title);
          //         },
          //       );
          //     }
          //   },
          // ),
//--------------------------This builder use fot Getx ------------------------//
          GetX<ApiGetxController>(
        init: apiGetxControllerGetx,
        builder: (controller) {
          if (controller.customApiModel.value.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.customApiModel.value.data!.result.length,
              itemBuilder: (context, index) {
                return Text(
                    controller.customApiModel.value.data!.result[index].title);
              },
            );
          }
        },
      ),
    );
  }
}
