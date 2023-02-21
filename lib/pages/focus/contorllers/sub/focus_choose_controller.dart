import 'package:flutter_zhihu_getx/pages/focus/models/focus_choose_data.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../provider/base_refresh_controller.dart';
import '../../../../provider/state/load_state.dart';
import '../../../../utils/logger/logger_util.dart';


/// 日期：2023-02-19
/// 描述：主页-主屏页面-关注--精选-控制器
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class FocusChooseController extends BaseRefreshController {
  final focusList = RxList<FocusChooseData>(); //关注-精选-页面集合数据
  @override
  void onInit() {
    super.onInit();
    onFirstInFocusChooseData();
  }

  /// 第一次进入
  void onFirstInFocusChooseData() {
    if(refreshLoadState!=null){
      focusList.assignAll(FocusChooseData.focusChooseList);
      refreshLoadState= LoadState.success;
      //refreshController.refreshCompleted(); //刷新完成
    }
  }

  /// 下拉刷新
  void onRefreshFocusChooseData() {
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
      LoggerUtil.d('============> onRefreshFocusData()', tag: 'FocusController-delayed');
    });
  }

  /// 上滑加载更多
  void onLoadMoreFocusChooseData() {
    LoggerUtil.d('============> onLoadMoreFocusData()', tag: 'FocusController');
    Future.delayed(const Duration(seconds: 2), () {
      refreshController.refreshCompleted(); //刷新完成
    });
  }
}