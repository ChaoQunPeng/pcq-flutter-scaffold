/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 19:21:48
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 22:10:45
 * @FilePath: /pcq_flutter_app/lib/pages/splash/controller.dart
 * @Description: 
 */
import 'package:get/get.dart';
import 'package:pcq_flutter_app/common/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(RouteNames.indexView);
    });
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
