import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../i18n/i18n_keys.dart';
import '../../widgets/custom_list_title.dart';
import '../controllers/theme_controller.dart';
import '../utils/theme_util.dart';

/// 日期：2023-02-16
/// 描述：主页-主屏页面-Body-me-设置-theme-页面
/// 说明：

class ThemeView extends GetView<ThemeController> {
  const ThemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme'),
          actions: [
            context.isDarkMode
                ? Icon(Icons.nightlight_round, color: context.iconColor)
                : Icon(Icons.wb_sunny_rounded, color: context.iconColor)
          ],
        ),
        body: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              //白色主题
              CustomListTitle(
                isSelectType: true,
                title: Keys.lightTheme.tr,
                isShowLeftWidget: true,
                leftWidget: const Icon(Icons.wb_sunny_rounded),
                rightWidget: const Icon(Icons.check),
                onTap: () => controller.setLightThemeMode(),
                isSelect: ThemeUtil.getThemeModel() == ThemeData.light()
                    ? true
                    : false,
              ),
              //夜间模式
              CustomListTitle(
                isSelectType: true,
                title: Keys.darkTheme.tr,
                isShowLeftWidget: true,
                leftWidget: const Icon(Icons.nightlight_round),
                rightWidget: const Icon(Icons.check),
                onTap: () => controller.setDarkThemeMode(),
                isSelect: ThemeUtil.getThemeModel() == ThemeData.dark()
                    ? true
                    : false,
              ),
            ],
          ),
        ));
  }
}
