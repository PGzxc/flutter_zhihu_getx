import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_hot_rank_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../provider/refresh/refresh_paging_state_page.dart';

//StatelessWidget

class HomeHotRankView extends GetView<HomeHotRankController> {
  const HomeHotRankView({super.key});

  @override
  Widget build(BuildContext context) {
    /// Don't use one refreshController to multiple SmartRefresher,It will cause some unexpected bugs mostly in TabBarView
    //HomeHotRankController controller = Get.find(tag: "3");

    return RefreshPagingStatePage<HomeHotRankController>(
        controller: controller,
        onPressed: () => controller.onFirstInHotRankData(),
        onRefresh: () => controller.onRefreshHotRankData(),
        onLoadMore: () => controller.onLoadMoreHotRankData(),
        refreshController: controller.refreshController,
        header: const WaterDropHeader(),
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
    child: Text("热榜3333"),
  );
}
