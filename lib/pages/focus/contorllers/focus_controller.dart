import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/focus/views/sub/focus_choose_view.dart';
import 'package:flutter_zhihu_getx/pages/focus/views/sub/focus_idea_view.dart';
import 'package:flutter_zhihu_getx/pages/focus/views/sub/focus_new_view.dart';

import '../../../provider/base_refresh_controller.dart';
import '../../../provider/state/load_state.dart';
import '../../../utils/logger/logger_util.dart';
import '../../../widget/keep_alive_wrapper.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-关注--控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class FocusController extends BaseRefreshController {
  late TabController homeTabController;
  late List<Widget> tabPageBodies;
  final tabValues = ['精选', '最新', '想法'];

  @override
  void onInit() {
    super.onInit();
    homeTabController = TabController(length: tabValues.length, initialIndex: 0, vsync: this);
    tabPageBodies = <Widget>[
      const KeepAliveWrapper(
        keepAlive: true,
        child: FocusChooseView(),
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: FocusNewView(),
      ),
      const KeepAliveWrapper(
        keepAlive: true,
        child: FocusIdeaView(),
      )
    ];
    onFirstInFocusData();
  }

  /// 第一次进入首页
  void onFirstInFocusData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshFocusData() {
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
      LoggerUtil.d('============> onRefreshFocusData()', tag: 'FocusController-delayed');
    });
  }

  /// 上滑加载更多
  void onLoadMoreFocusData() {
    LoggerUtil.d('============> onLoadMoreFocusData()', tag: 'FocusController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }
}