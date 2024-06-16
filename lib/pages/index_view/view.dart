/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 11:56:50
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 17:24:42
 * @FilePath: /pcq_flutter_app/lib/pages/index_view/view.dart
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcq_flutter_app/common/index.dart';

import 'index.dart';
import 'widgets/list_item.dart';

class ItemModel {
  final String title;
  final String code;

  ItemModel({required this.title, required this.code});

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      title: json['title'],
      code: json['code'],
    );
  }
}

class IndexViewPage extends GetView<IndexViewController> {
  const IndexViewPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    var items = [
      {'title': "底部导航栏", 'code': RouteNames.main},
      {'title': "ScreenUtil 配置", 'code': RouteNames.screenutil},
    ];

    List<ListItem> list = [];

    for (var item in items) {
      ItemModel model = ItemModel.fromJson(item);
      list.add(ListItem(
        title: model.title,
        onTap: () {
          controller.goMainView(model.code);
        },
      ));
    }

    return ListView(
      children: list,
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
