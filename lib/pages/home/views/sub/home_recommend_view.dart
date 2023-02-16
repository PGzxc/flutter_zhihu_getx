import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_hot_rank_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_recommend_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../provider/refresh/refresh_paging_state_page.dart';
//StatelessWidget
class HomeHotRecommendView extends GetView<HomeRecommendController> {
  const HomeHotRecommendView({super.key});

  @override
  Widget build(BuildContext context) {
    //HomeRecommendController controller = Get.find(tag: "2");

    return RefreshPagingStatePage<HomeRecommendController>(
        controller: controller,
        onPressed: () => controller.onFirstInRecommendData(),
        onRefresh: () => controller.onRefreshRecommendData(),
        onLoadMore: () => controller.onLoadMoreRecommendData(),
        refreshController: controller.refreshController,
        header: const WaterDropHeader(),
        //header: const ClassicHeader(),
        lottieRocketRefreshHeader: false,
        child: _buildIdeaWidget(context));
  }
}

Widget _buildIdeaWidget(BuildContext context) {
  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
    margin: const EdgeInsets.all(
      15,
    ),
    alignment: Alignment.center,
    child: Text("推荐2222"),
  );
}
