import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/sub/vip_find_view.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/sub/vip_purchase_view.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/sub/vip_salt_book_view.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/sub/vip_salt_evaluate_view.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/sub/vip_salt_knowledge_view.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/sub/vip_salt_story_view.dart';

import '../../../provider/base_refresh_controller.dart';
import '../../../provider/state/load_state.dart';
import '../../../utils/logger/logger_util.dart';
import '../../../widget/keep_alive_wrapper.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-会员--控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class VipController extends BaseRefreshController {
  late TabController homeTabController;
  late List<Widget> tabPageBodies;
  final tabValues = ['发现', '会员购', '盐故事', '盐知识', '盐书刊', '盐测评'];

  @override
  void onInit() {
    super.onInit();

    homeTabController =
        TabController(length: tabValues.length, initialIndex: 0, vsync: this);
    tabPageBodies = <Widget>[
      // HomeIdeaView(),
      // HomeHotRecommendView(),
      // HomeHotRankView()

      const KeepAliveWrapper(
        keepAlive: true,
        child: VipFindView(), //vip-发现
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: VipPurchaseView(),//vip-会员购
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: VipSaltStoryView(), //vip-盐故事
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: VipSaltKnowledgeView(), //vip-盐知识
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: VipSaltBookView(), //vip-盐书刊
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: VipSaltEvaluateView(), //vip-盐测评
      ),
    ];

    onFirstInVipData();
  }

  /// 第一次进入首页
  void onFirstInVipData() {
    if (refreshLoadState != null) {
      refreshLoadState = LoadState.success;
      refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshVipData() {
    LoggerUtil.d('============> onRefreshVipData()', tag: 'VipController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreVipData() {
    LoggerUtil.d('============> onLoadMoreVipData()', tag: 'VipController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }
}
