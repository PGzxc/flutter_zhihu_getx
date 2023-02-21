import 'package:flutter_zhihu_getx/pages/home/models/recommend_all_data.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

///日期：2023-02-18
///描述：首页-推荐-全站

class RecommendAllController extends BaseRefreshController {
  final ideaList = RxList<RecommendAllData>(); //首页-推荐-页面集合数据

  @override
  void onInit() {
    super.onInit();
    onFirstInRecommendAlData();
  }

  /// 第一次进入首页
  void onFirstInRecommendAlData() {
    if (refreshLoadState != null) {
      ideaList.assignAll(RecommendAllData.recommendAllList);
      refreshLoadState = LoadState.success;
      refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshRecommendAlData() {
    LoggerUtil.d('============> onRefreshIdeaData()',
        tag: 'HomeIdeaController');
    Future.delayed(const Duration(seconds: 2), () {
      ideaList.shuffle(); //将集合数据重新排列，模拟接口
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreRecommendAlData() {
    LoggerUtil.d('============> onLoadMoreIdeaData()',
        tag: 'HomeIdeaController');
    Future.delayed(const Duration(seconds: 2), () {
      ideaList.shuffle(); //将集合数据重新排列，模拟接口
      refreshController.loadComplete();
      //refreshController.loadNoData();
      //refreshController.refreshCompleted(); //刷新完成
    });
  }
}
