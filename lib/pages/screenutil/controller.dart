import 'package:get/get.dart';

class ScreenutilController extends GetxController {
  ScreenutilController();

  _initData() {
    update(["screenutil"]);
  }

  void onTap() {}

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
