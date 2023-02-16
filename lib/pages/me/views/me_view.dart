import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../../../res/app_theme.dart';
import '../contorllers/me_controller.dart';

/// 日期：2023-02-16
/// 描述：主页-我的页面
/// 说明：
class MeView extends GetView<MeController> {
  const MeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshPagingStatePage<MeController>(
        controller: controller,
        onPressed: () => controller.onFirstInMeData(),
        onRefresh: () => controller.onRefreshMeData(),
        onLoadMore: () => controller.onLoadMoreMeData(),
        refreshController: controller.refreshController,
        header: const ClassicHeader(),
        lottieRocketRefreshHeader: false,
        child: Scaffold(
          body: Container(
              alignment: Alignment.center,
              color: AppTheme.deactivatedText,
              child: Text("我的")),
        ));
  }
}
