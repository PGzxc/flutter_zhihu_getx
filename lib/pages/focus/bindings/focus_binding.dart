import 'package:flutter_zhihu_getx/pages/focus/contorllers/sub/focus_choose_controller.dart';
import 'package:flutter_zhihu_getx/pages/focus/contorllers/sub/focus_idea_controller.dart';
import 'package:flutter_zhihu_getx/pages/focus/contorllers/sub/focus_new_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../contorllers/focus_controller.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-关注--绑定(界面与控制器)
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller


class FocusBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FocusController());

    Get.lazyPut(() => FocusChooseController());
    Get.lazyPut(() => FocusNewController());
    Get.lazyPut(() => FocusIdeaController());

  }

}