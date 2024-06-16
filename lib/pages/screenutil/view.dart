/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 16:03:04
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 17:37:37
 * @FilePath: /pcq_flutter_app/lib/pages/screenutil/view.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class ScreenutilPage extends GetView<ScreenutilController> {
  const ScreenutilPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Container(
      width: 100.w,
      height: 100.w,
      color: Colors.amber,
      child: Text(
        "我是文字",
        style: TextStyle(
          fontSize: 20.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScreenutilController>(
      init: ScreenutilController(),
      id: "screenutil",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("screenutil")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
