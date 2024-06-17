/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 15:06:44
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 20:00:42
 * @FilePath: /pcq_flutter_app/lib/common/routers/pages.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcq_flutter_app/common/index.dart';
import 'package:pcq_flutter_app/pages/splash/view.dart';

import '../../pages/index.dart';
import 'index.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static List<GetPage> list = [
    GetPage(
      name: "/",
      page: () => const IndexViewPage(),
    ),
    GetPage(
      name: RouteNames.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteNames.screenutil,
      page: () => const ScreenutilPage(),
    ),
    GetPage(
      name: RouteNames.splash,
      page: () => const SplashPage(),
    ),
  ];
}
