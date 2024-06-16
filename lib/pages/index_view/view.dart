/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 11:56:50
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 15:43:33
 * @FilePath: /pcq_flutter_app/lib/pages/index_view/view.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/list_item.dart';


class IndexViewPage extends GetView<IndexViewController> {
  const IndexViewPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ListView(
      children: [
        ListItem(
          title: "主页面",
          icon: Icons.synagogue,
          onTap: controller.goMainView,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndexViewController>(
      init: IndexViewController(),
      id: "index_view",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("导航")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
