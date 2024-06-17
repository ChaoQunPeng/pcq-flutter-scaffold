/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-17 14:16:53
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 16:31:30
 * @FilePath: /pcq_flutter_app/lib/global.dart
 * @Description: 
 */
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    // 初始化原生应用相关的东西
    // 表示先就行原生端（ios android）插件注册，然后再处理后续操作，这样能保证代码运行正确。
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});
  }
}
