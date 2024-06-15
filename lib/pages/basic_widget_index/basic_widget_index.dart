/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-11 11:40:41
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-11 12:27:23
 * @FilePath: /pcq_flutter_app/lib/pages/basic_widget_index/basic_widget_index.dart
 * @Description: 
 */
import 'package:flutter/material.dart';

class BasicWidgetIndex extends StatelessWidget {
  const BasicWidgetIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BasicWidgetIndex"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          crossAxisCount: 4,
          childAspectRatio: 2.0,
        ),
        children: [
          for (var i = 0; i < 10; i++)
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              child: Text("$i"),
            ),
          const Icon(
            Icons.access_alarm_rounded,
            color: Colors.amber,
          ),
          // Icon(Icons.access_alarm_rounded),
          // Icon(Icons.access_alarm_rounded),
          // Icon(Icons.access_alarm_rounded),
          // Icon(Icons.access_alarm_rounded),
          // Icon(Icons.access_alarm_rounded),
          // Icon(Icons.access_alarm_rounded),
        ],
      ),
    );
  }
}
