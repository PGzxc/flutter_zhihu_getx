
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_all_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_campus_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_digital_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_fashion_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_live_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_movies_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_science_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../contorllers/sub/home_idea_controller.dart';

/// 日期：2023-02-18
/// 描述：主页-主屏页面-首页--推荐绑定(界面与控制器)
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class HomeReCommendBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => RecommendAllController());
    Get.lazyPut(() => RecommendCampusController());
    Get.lazyPut(() => RecommendDigitalController());
    Get.lazyPut(() => RecommendFashionController());
    Get.lazyPut(() => RecommendLiveController());
    Get.lazyPut(() => RecommendMoviesController());
    Get.lazyPut(() => RecommendScienceController());

  }

}