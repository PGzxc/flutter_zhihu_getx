import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../../../res/app_theme.dart';
import '../contorllers/vip_controller.dart';

/// 日期：2022-05-15
/// 描述：主页-Vip页面
/// 说明：
class VipView extends GetView<VipController> {
  const VipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshPagingStatePage<VipController>(
      controller: controller,
      onPressed: () => controller.onFirstInHomeData(),
      onRefresh: () => controller.onRefreshHomeData(),
      onLoadMore: () => controller.onLoadMoreHomeData(),
      refreshController: controller.refreshController,
      header: const ClassicHeader(),
      lottieRocketRefreshHeader: false,
      child: Scaffold(
        appBar: AppBar(title: Text("会员"),centerTitle: true),
        body:   Container(alignment:Alignment.center,color: AppTheme.nearlyBlack, child: Text("会员")),
      )
    );
  }
}
