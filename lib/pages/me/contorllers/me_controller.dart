import 'package:flutter_zhihu_getx/provider/state/load_state.dart';

import '../../../provider/base_refresh_controller.dart';
import '../../../utils/logger/logger_util.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-我的--控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class MeController extends BaseRefreshController {

  @override
  void onInit() {
    super.onInit();
    onFirstInMeData();
  }

  /// 第一次进入首页
  void onFirstInMeData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshMeData() {
    LoggerUtil.d('============> onRefreshMeData()', tag: 'MeController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreMeData() {
    LoggerUtil.d('============> onLoadMoreMeData()', tag: 'MeController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }
}