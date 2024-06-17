/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 11:56:50
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 18:27:36
 * @FilePath: /pcq_flutter_app/lib/pages/index_view/controller.dart
 * @Description: 
 */
import 'package:get/get.dart';
import 'package:pcq_flutter_app/common/index.dart';

class IndexViewController extends GetxController {
  IndexViewController();

  String get version => ConfigService.to.version;

  _initData() {
    update(["index_view"]);
  }

  goMainView(String name) {
    Get.toNamed(name);
  }

  changeLanguage() {
    var en = Translation.supportedLocales[0];
    var zh = Translation.supportedLocales[1];

    ConfigService.to.onLocaleUpdate(
        ConfigService.to.locale.toLanguageTag() == en.toLanguageTag()
            ? zh
            : en);

    update(["index_view"]);
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
