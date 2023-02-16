import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/views/sub/home_hot_rank_view.dart';
import 'package:flutter_zhihu_getx/pages/home/views/sub/home_idea_view.dart';
import 'package:flutter_zhihu_getx/pages/home/views/sub/home_recommend_view.dart';
import 'package:flutter_zhihu_getx/provider/base_controller.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../../provider/base_refresh_controller.dart';
import '../../../provider/state/load_state.dart';
import '../../../utils/logger/logger_util.dart';
import '../../../widget/keep_alive_wrapper.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-首页--控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class HomeController extends BaseRefreshController {

  late TabController homeTabController;
  late List<Widget> tabPageBodies;
  final tabValues = ['想法', '推荐', '热榜'];

  @override
  void onInit() {
    super.onInit();
    homeTabController = TabController(length: tabValues.length, initialIndex: 0, vsync: this);
    tabPageBodies = <Widget>[
      // HomeIdeaView(),
      // HomeHotRecommendView(),
      // HomeHotRankView()

      const KeepAliveWrapper(
        keepAlive: true,
        child: HomeIdeaView(),
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: HomeHotRecommendView(),
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: HomeHotRankView(),
     )
    ];
    //onFirstInHomeData();
  }

  /// 第一次进入首页
  // void onFirstInHomeData() {
  //   if(refreshLoadState!=null){
  //     refreshLoadState= LoadState.success;
  //     refreshController.refreshCompleted(); //刷新完成
  //   }
  // }

  /// 下拉刷新首页
  // void onRefreshHomeData() {
  //   LoggerUtil.d('============> onRefreshHomeData()', tag: 'HomeController');
  //   Future.delayed(const Duration(seconds: 2), () {
  //     refreshController.refreshCompleted(); //刷新完成
  //     LoggerUtil.d('============> onRefreshHomeData()', tag: 'HomeController-delayed');
  //   });
  // }

  /// 上滑加载更多
  // void onLoadMoreHomeData() {
  //   LoggerUtil.d('============> onLoadMoreHomeData()', tag: 'HomeController');
  //   Future.delayed(const Duration(seconds: 2), () {
  //     refreshController.refreshCompleted(); //刷新完成
  //   });
  // }
}