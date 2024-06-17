/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-17 14:16:53
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 14:18:38
 * @FilePath: /pcq_flutter_app/lib/global.dart
 * @Description: 
 */
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Global {
  static Future<void> init() async {
    // 初始化原生应用相关的东西
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }
}
