import '../../../provider/base_refresh_controller.dart';
import '../../../provider/state/load_state.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-会员--控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller


class VipController extends BaseRefreshController {

  @override
  void onInit() {
    super.onInit();
    onFirstInHomeData();
  }

  /// 第一次进入首页
  void onFirstInHomeData() {
    if(refreshLoadState!=null){
      this.refreshLoadState=LoadState.success;
    }
  }

  /// 下拉刷新首页
  void onRefreshHomeData() {

  }

  /// 上滑加载更多
  void onLoadMoreHomeData() {

  }
}