import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';
import 'body_view.dart';

/// 日期：2022-05-16
/// 描述：主页-主屏页面
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class MainScreen extends GetView<MainController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BodyView();
  }
}


