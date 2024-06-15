/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-10 18:12:36
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-10 20:31:08
 * @FilePath: /pcq_flutter_app/lib/pages/flutter_basic/flutter_basic.dart
 * @Description: 
 */
import 'dart:developer';

import 'package:flutter/material.dart';

class KeyValueModel<T> {
  String key;
  T value;

  KeyValueModel({required this.key, required this.value});

  factory KeyValueModel.fromJson(Map<String, dynamic> json) {
    return KeyValueModel(
      key: json['key'] as String,
      value: json['value'] as T,
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
      };

  @override
  String toString() {
    return "$value";
  }
}

class FlutterBasic extends StatelessWidget {
  const FlutterBasic({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> object = {
      "key": "name",
      "value": "pcq",
    };

    Function fn(KeyValueModel model) {
      model.toJson();
      throw '';
    }

    // print("object123");
    print(KeyValueModel.fromJson(object));

    // inspect(KeyValueModel.fromJson(object));

    return const Center(child: Text("哈哈哈"));
  }
}
