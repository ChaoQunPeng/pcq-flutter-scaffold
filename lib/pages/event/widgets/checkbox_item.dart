/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-08 21:17:26
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-08 21:25:32
 * @FilePath: /pcq_flutter_app/lib/pages/event/widgets/checkbox_item.dart
 * @Description: 
 */
import 'package:flutter/material.dart';

class CheckboxItem extends StatelessWidget {
  const CheckboxItem({super.key, this.label = "复选框"});

  final String label;

  @override
  Widget build(BuildContext context) {
    void onChanged(val) {}

    return Row(
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: onChanged),
            Text(label)
          ],
        )
      ],
    );

    // return const Row(
    //   children: [
    //     Checkbox(value: false, onChanged: onChanged),
    //   ],
    // );
  }
}
