import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

/// 日期：2023-02-19
/// 描述：主页-主屏页面-关注--最新-控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class FocusNewController extends BaseRefreshController {

  @override
  void onInit() {
    super.onInit();
    onFirstInFocusNewData();
  }

  /// 第一次进入
  void onFirstInFocusNewData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新
  void onRefreshFocusNewData() {
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
      LoggerUtil.d('============> onRefreshFocusData()', tag: 'FocusController-delayed');
    });
  }

  /// 上滑加载更多
  void onLoadMoreFocusNewData() {
    LoggerUtil.d('============> onLoadMoreFocusData()', tag: 'FocusController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }
}