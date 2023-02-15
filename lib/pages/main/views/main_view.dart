import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../i18n/i18n_keys.dart';
import '../../../routes/app_routes.dart';
import '../controllers/main_controller.dart';
import 'main_drawer.dart';
import 'main_screen_view.dart';

/// 日期：2023-02-14
/// 描述：主页
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: MainScreen());
    return Obx(() => Scaffold(
        appBar: _buildAppBar(),
        //drawer: const MainDrawer(),
        body: const MainScreen()));
  }

  AppBar? _buildAppBar() {
    if (controller.currentTitle == Keys.project.tr) {
      return null;
    } else {
      return AppBar(
        centerTitle: true,
        title: Text("${controller.currentTitle}"),
        actions: [
          (controller.currentTitle == Keys.me.tr)
              ? IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Get.toNamed(Routes.setting);
                  },
                )
              : IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                )
        ],
      );
    }

  }
}
