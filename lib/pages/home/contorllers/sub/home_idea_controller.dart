
import '../../../../provider/base_controller.dart';
import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';
import '../home_controller.dart';

class HomeIdeaController extends BaseRefreshController{

  @override
  void onInit() {
    super.onInit();
    onFirstInIdeaData();
  }

  /// 第一次进入首页
  void onFirstInIdeaData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshIdeaData() {
    LoggerUtil.d('============> onRefreshIdeaData()', tag: 'HomeIdeaController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreIdeaData() {
    LoggerUtil.d('============> onLoadMoreIdeaData()', tag: 'HomeIdeaController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.loadComplete();
      //refreshController.loadNoData();
      //refreshController.refreshCompleted(); //刷新完成
    });
  }

}