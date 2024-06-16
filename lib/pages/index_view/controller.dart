/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 11:56:50
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 17:24:25
 * @FilePath: /pcq_flutter_app/lib/pages/index_view/controller.dart
 * @Description: 
 */
import 'package:get/get.dart';
import 'package:pcq_flutter_app/common/index.dart';

class IndexViewController extends GetxController {
  IndexViewController();

  _initData() {
    update(["index_view"]);
  }

  goMainView(String name) {
    Get.toNamed(name);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
