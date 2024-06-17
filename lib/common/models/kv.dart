/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-17 19:58:22
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-18 00:08:33
 * @FilePath: /pcq_flutter_app/lib/common/models/kv.dart
 * @Description: 
 */
/// key value 键值对
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