import 'package:flutter_zhihu_getx/pages/home/contorllers/home_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/models/hot_list_data.dart';
import 'package:flutter_zhihu_getx/provider/base_controller.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

class HomeHotRankController extends BaseRefreshController{
  final hotList =RxList<HotListData>(); //热榜集合数据

  @override
  void onInit() {
    super.onInit();
    onFirstInHotRankData();
  }

  /// 第一次进入首页
  void onFirstInHotRankData() {
    if(refreshLoadState!=null){
      hotList.assignAll(HotListData.hotList);
      refreshLoadState= LoadState.success;
      refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshHotRankData() {
    LoggerUtil.d('============> onRefreshHotRankData()', tag: 'HomeHotRankController');
    Future.delayed(const Duration(seconds: 2), () {
      hotList.shuffle(); //将集合数据重新排列，模拟接口
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreHotRankData() {
    LoggerUtil.d('============> onLoadMoreHotRankData()', tag: 'HomeHotRankController');
    Future.delayed(const Duration(seconds: 2), () {
      hotList.shuffle(); //将集合数据重新排列，模拟接口
      refreshController.loadComplete();
      refreshController.refreshCompleted(); //刷新完成
    });
  }

}