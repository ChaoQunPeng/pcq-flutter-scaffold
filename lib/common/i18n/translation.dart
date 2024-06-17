/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-17 17:40:11
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-17 19:16:29
 * @FilePath: /pcq_flutter_app/lib/common/i18n/translation.dart
 * @Description: 
 */

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'index.dart';

/// 翻译类
class Translation extends Translations {
  // 当前系统语言
  static Locale? get locale => Get.deviceLocale;
  
  // 默认语言 Locale(语言代码, 国家代码)
  static const fallbackLocale = Locale('en', 'US');
  // 支持语言列表
  static const supportedLocales = [
    Locale('en', 'US'),
    Locale('zh', 'CN'),
  ];
  // 代理
  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
  // 语言代码对应的翻译文本
  @override
  Map<String, Map<String, String>> get keys => {
        'en': localeEn,
        'zh': localeZh,
      };
}
