import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_all.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_campus.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_digital.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_fashion.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_live.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_movies.dart';
import 'package:flutter_zhihu_getx/pages/home/views/subrecommend/recommend_science.dart';

import '../../../../provider/base_controller.dart';
import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';
import '../../../../widget/keep_alive_wrapper.dart';
import '../home_controller.dart';

class HomeRecommendController extends BaseRefreshController {
  late TabController homeRecommendTabController;
  late List<Widget> tabPageBodies;
  final tabValues = ['全站', '直播', '科学', '校园', '影视', '数码', '时尚'];

  @override
  void onInit() {
    super.onInit();
    homeRecommendTabController =
        TabController(length: tabValues.length, initialIndex: 0, vsync: this);
    tabPageBodies = <Widget>[
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendAllView(), //全站
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendLiveView(), //直播
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendScienceView(), //科学
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendCampusView(), //校园
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendMoviesView(), //影视
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendDigitalView(),
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: RecommendFashionView(),
      )
    ];
    onFirstInRecommendData();
  }

  /// 第一次进入首页
  void onFirstInRecommendData() {
    if (refreshLoadState != null) {
      refreshLoadState = LoadState.success;
      refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshRecommendData() {
    LoggerUtil.d('============> onRefreshRecommendData()',
        tag: 'HomeRecommendController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.loadComplete();
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreRecommendData() {
    LoggerUtil.d('============> onLoadMoreRecommendData()',
        tag: 'HomeRecommendController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }
}
