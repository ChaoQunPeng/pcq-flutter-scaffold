/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-08 16:41:51
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-08 18:02:19
 * @FilePath: /pcq_flutter_app/lib/pages/home/view.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    // 为什么这里一个要Const一个不要
    // return Container();
    // return const Center();

    // 居中布局
    // return Container(
    //   width: 320,
    //   height: 240,
    //   decoration: const BoxDecoration(color: Colors.green),
    //   child: Center(
    //     child: Container(
    //       width: 100,
    //       height: 100,
    //       color: Colors.red,
    //     ),
    //   ),
    // );

    // 堆叠布局，相对定位
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: Colors.green),
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                transform: Matrix4.identity()
                  ..rotateZ(15.0 * 3.1415926 / 180)
                  ..scale(0.5),
              )),
          Positioned(
              top: 100,
              left: 120,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.yellow,
                ),
              )),
          Positioned(
              top: 50,
              left: 120,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              )),
          Positioned(
              top: 50,
              left: 120,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              )),
          const Text(
            "dhdhdh",
            style: TextStyle(fontSize: 30, letterSpacing: 20),
          ),
          RichText(
              text: const TextSpan(
            text: "哈哈",
            children: [
              TextSpan(
                text: "耳机",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ],
          )),
          const Text(
            """哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
              2313123
            """,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "home",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("首页")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
