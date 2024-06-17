/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-17 16:09:58
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 16:28:58
 * @FilePath: /pcq_flutter_app/lib/common/services/config.dart
 * @Description: 
 */
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// 配置服务
class ConfigService extends GetxService {
  // 这是一个单例写法
  static ConfigService get to => Get.find();

  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';

  // 初始化
  Future<ConfigService> init() async {
    await getPlatform();
    return this;
  }

  Future<void> getPlatform() async {
 
    _platform = await PackageInfo.fromPlatform();
  }
}