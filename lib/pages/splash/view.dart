/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 19:21:48
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 14:33:30
 * @FilePath: /pcq_flutter_app/lib/pages/splash/view.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcq_flutter_app/common/index.dart';

import 'controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  Widget _buildView() {
    return const ImageWidget.asset(
      AssetsImages.splashJpg,
      fit: BoxFit.fill, // 填充整个界面
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return _buildView();
      },
    );
  }
}
