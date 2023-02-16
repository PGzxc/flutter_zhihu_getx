import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';

/// 日期：2023-02-16
/// 描述：主页-Vip页面-盐知识-控制器
/// 说明：

class VipSaltKnowledgeController extends BaseRefreshController{

  @override
  void onInit() {
    super.onInit();
    onFirstInVipSaltKnowledgeData();
  }

  /// 第一次进入首页
  void onFirstInVipSaltKnowledgeData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshVipSaltKnowledgeData() {
    LoggerUtil.d('============> onRefreshVipSaltKnowledgeData()', tag: 'VipSaltKnowledgeController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreVipSaltKnowledgeData() {
    LoggerUtil.d('============> onLoadMoreVipSaltKnowledgeData()', tag: 'VipSaltKnowledgeController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

}