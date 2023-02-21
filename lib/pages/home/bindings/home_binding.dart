import 'package:flutter_zhihu_getx/pages/home/bindings/home_recommend_binding.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_hot_rank_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_idea_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_recommend_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../contorllers/home_controller.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-首页--绑定(界面与控制器)
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeIdeaController());
    Get.lazyPut(() => HomeRecommendController());
    Get.lazyPut(() => HomeHotRankController());
    Get.lazyPut(() => HomeController());
  }
}
