/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-08 21:17:26
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-08 21:47:28
 * @FilePath: /pcq_flutter_app/lib/pages/event/widgets/checkbox_item.dart
 * @Description: 
 */
import 'package:flutter/material.dart';

class CheckboxItem extends StatefulWidget {
  const CheckboxItem({super.key, this.label = "复选框"});

  final String label;

  @override
  State<CheckboxItem> createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    void onChanged(newVal) {
      setState(() {
        _value = newVal;
      });
    }

    return Row(
      children: [
        Row(
          children: [
            Checkbox(value: _value, onChanged: onChanged),
            GestureDetector(
              onTap: () {
                onChanged(!_value);
              },
              child: Text(widget.label),
            ),
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
