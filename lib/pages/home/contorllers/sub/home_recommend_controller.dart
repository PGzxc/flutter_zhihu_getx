import '../../../../provider/base_controller.dart';
import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';
import '../home_controller.dart';

class HomeRecommendController extends BaseRefreshController{

  @override
  void onInit() {
    super.onInit();
    onFirstInRecommendData();
  }

  /// 第一次进入首页
  void onFirstInRecommendData() {
    if(refreshLoadState!=null){
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新首页
  void onRefreshRecommendData() {
    LoggerUtil.d('============> onRefreshRecommendData()', tag: 'HomeRecommendController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

  /// 上滑加载更多
  void onLoadMoreRecommendData() {
    LoggerUtil.d('============> onLoadMoreRecommendData()', tag: 'HomeRecommendController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }

}