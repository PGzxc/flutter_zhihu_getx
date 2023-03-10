import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/theme_util.dart';

/// 日期：2023-02-16
/// 描述：主页-主屏页面-Body-me-设置-theme-控制器
/// 说明：
class ThemeController extends GetxController {
  //日间模式
  void setLightThemeMode() {
    Get.changeThemeMode(ThemeMode.light);
    //本地保存主题
    ThemeUtil.updateThemeModel(false);
  }

  //夜间模式
  void setDarkThemeMode() {
    Get.changeThemeMode(ThemeMode.dark);
    //本地保存主题
    ThemeUtil.updateThemeModel(true);
  }
}
