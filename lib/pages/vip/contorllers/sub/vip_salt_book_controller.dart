import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

/// 日期：2023-02-16
/// 描述：主页-Vip页面-盐书刊-控制器
/// 说明：

class VipSaltBookController extends BaseRefreshController{

  @override
  void onInit() {
    super.onInit();
    onFirstInVipSaltBookData();
  }

  /// 第一次进入首页
  void onFirstInVipSaltBookData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshVipSaltBookData() {
    LoggerUtil.d('============> onRefreshVipSaltBookData()', tag: 'VipSaltBookController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreVipSaltBookData() {
    LoggerUtil.d('============> onLoadMoreVipSaltBookData()', tag: 'VipSaltBookController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

}
