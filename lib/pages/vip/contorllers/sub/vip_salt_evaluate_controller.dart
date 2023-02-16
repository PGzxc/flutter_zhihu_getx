import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

/// 日期：2023-02-16
/// 描述：主页-Vip页面-盐测评-控制器
/// 说明：

class VipSaltEvaluateController extends BaseRefreshController{

  @override
  void onInit() {
    super.onInit();
    onFirstInVipSaltEvaluateData();
  }

  /// 第一次进入首页
  void onFirstInVipSaltEvaluateData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshVipSaltEvaluateData() {
    LoggerUtil.d('============> onRefreshVipSaltEvaluateData()', tag: 'VipSaltEvaluateController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreVipSaltEvaluateData() {
    LoggerUtil.d('============> onLoadMoreVipSaltEvaluateData()', tag: 'VipSaltEvaluateController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

}