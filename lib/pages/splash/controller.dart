/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 19:21:48
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 14:39:19
 * @FilePath: /pcq_flutter_app/lib/pages/splash/controller.dart
 * @Description: 
 */
import 'package:flutter_native_splash/flutter_native_splash.dart';
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
  void onReady() async {
    super.onReady();

    await Future.delayed(const Duration(milliseconds: 1000));
    // 删除设备启动图
    FlutterNativeSplash.remove();
    
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offNamed(RouteNames.indexView);
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
