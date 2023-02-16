import 'package:flutter_zhihu_getx/pages/home/contorllers/home_controller.dart';
import 'package:flutter_zhihu_getx/provider/base_controller.dart';

import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

class HomeHotRankController extends BaseRefreshController{

  @override
  void onInit() {
    super.onInit();
    onFirstInHotRankData();
  }

  /// 第一次进入首页
  void onFirstInHotRankData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshHotRankData() {
    LoggerUtil.d('============> onRefreshHotRankData()', tag: 'HomeHotRankController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreHotRankData() {
    LoggerUtil.d('============> onLoadMoreHotRankData()', tag: 'HomeHotRankController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

}