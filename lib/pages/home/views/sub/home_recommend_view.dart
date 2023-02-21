import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_hot_rank_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/sub/home_recommend_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:remixicon/remixicon.dart';

import '../../../../provider/refresh/refresh_paging_state_page.dart';

//StatelessWidget
class HomeRecommendView extends GetView<HomeRecommendController> {
  const HomeRecommendView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildIdeaWidget(context, controller);

    return RefreshPagingStatePage<HomeRecommendController>(
        controller: controller,
        onPressed: () => controller.onFirstInRecommendData(),
        onRefresh: () => controller.onRefreshRecommendData(),
        onLoadMore: () => controller.onLoadMoreRecommendData(),
        refreshController: controller.refreshController,
        header: const WaterDropHeader(),
        //header: const ClassicHeader(),
        lottieRocketRefreshHeader: false,
        child: _buildIdeaWidget(context, controller));
  }
}

Widget _buildIdeaWidget(
    BuildContext context, HomeRecommendController controller) {
  return Column(
    children: [
      Container(
          margin: const EdgeInsets.only(left: 5, right: 15),
          child: Row(
            children: [
              Expanded(
                  child: TabBar(
                      tabs: controller.tabValues.map((f) {
                        return Text(f);
                      }).toList(),
                      controller: controller.homeRecommendTabController,
                      indicatorColor: Colors.red,
                      indicatorSize: TabBarIndicatorSize.tab,
                      isScrollable: true,
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.black,
                      indicatorWeight: 5.0,
                      labelStyle: const TextStyle(height: 2, fontSize: 15))),
              SizedBox(
                width: 20,
                height: 20,
                child: Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Icon(Remix.align_justify,color: Colors.grey),
                ),
              )
            ],
          )),
      Expanded(
        child: TabBarView(
            controller: controller.homeRecommendTabController,
            children: controller.tabPageBodies),
      )
    ],
  );
}
