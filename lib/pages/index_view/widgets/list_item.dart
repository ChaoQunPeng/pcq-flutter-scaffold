/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-16 15:01:19
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-16 17:27:43
 * @FilePath: /pcq_flutter_app/lib/pages/index_view/widgets/list_item.dart
 * @Description: 
 */
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    this.code,
    this.subtitle,
    this.icon,
    this.onTap,
  });

  final String title;

  final String? code;

  final String? subtitle;

  final IconData? icon;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // InkWell要有onTap属性才会有水波纹效果
    return InkWell(
      onTap: onTap,
      child: GestureDetector(
        child: ListTile(
          // leading: Icon(icon ?? Icons.data_object),
          title: Text(title),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
