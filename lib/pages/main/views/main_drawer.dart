import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/res/app_theme_data.dart';
import 'package:get/get.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/components/drawer/gf_drawer_header.dart';
import '../../../i18n/i18n_keys.dart';
import '../../../routes/app_routes.dart';
import '../controllers/main_controller.dart';

/// 日期：2023-02-16
/// 描述：主页-抽屉界面
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class MainDrawer extends GetView<MainController> {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>  GFDrawer(
      color: context.scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 250,
            child: GFDrawerHeader(
              closeButton: InkWell(
                onTap: () => Get.back(),
                child: const Icon(
                  CupertinoIcons.back,
                  color: GFColors.SUCCESS,
                ),
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFD685FF), Color(0xFF7466CC)],
                ),
              ),
              child: InkWell(
                  onTap: () => {controller.isLogin
                            ? null
                            : Get.toNamed(Routes.loginRegister.nameToRoute())},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const GFAvatar(
                        radius: 40,
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(height: 5),
                    ],
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            color: context.scaffoldBackgroundColor,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.today),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text(Keys.menuTodoList.tr),
                  onTap: () {Navigator.pop(context);}
                ),
                ListTile(
                  onTap: () {Navigator.pop(context);},
                  title: Text(Keys.menuUnreadMsg.tr),
                  leading: const Icon(Icons.message_rounded),
                  trailing: const Icon(Icons.arrow_forward_ios)
                ),
                ListTile(
                    onTap: () => Get.back(),
                    title: Text(Keys.menuWenDa.tr),
                    leading: const Icon(Icons.question_answer),
                    trailing: const Icon(Icons.arrow_forward_ios)),
                Visibility(
                    visible: controller.isLogin ? true : false,
                    child: ListTile(
                        onTap: () => controller.logout(),
                        title: Text(Keys.logout.tr),
                        leading: const Icon(Icons.logout),
                        trailing: const Icon(Icons.arrow_forward_ios)))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
