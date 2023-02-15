import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../../../res/app_theme.dart';
import '../contorllers/me_controller.dart';

/// 日期：2022-05-15
/// 描述：主页-我的页面
/// 说明：
class MeView extends GetView<MeController> {
  const MeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshPagingStatePage<MeController>(
      controller: controller,
      onPressed: () => controller.onFirstInHomeData(),
      onRefresh: () => controller.onRefreshHomeData(),
      onLoadMore: () => controller.onLoadMoreHomeData(),
      refreshController: controller.refreshController,
      header: const ClassicHeader(),
      lottieRocketRefreshHeader: false,
      child: Scaffold(
        appBar: AppBar(title: Text("我的"),centerTitle: true),
        body:   Container(alignment:Alignment.center,color: AppTheme.deactivatedText, child: Text("我的")),
      )
    );
  }
}
