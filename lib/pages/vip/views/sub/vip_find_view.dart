import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_find_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../provider/refresh/refresh_paging_state_page.dart';

/// 日期：2023-02-16
/// 描述：主页-Vip页面-发现
/// 说明：


class VipFindView extends GetView<VipFindController> {
  const VipFindView({super.key});

  @override
  Widget build(BuildContext context) {

    return RefreshPagingStatePage<VipFindController>(
        controller: controller,
        onPressed: () => controller.onFirstInVipFindData(),
        onRefresh: () => controller.onRefreshVipFindData(),
        onLoadMore: () => controller.onLoadMoreVipFindData(),
        refreshController: controller.refreshController,
        header: const WaterDropHeader(),
        lottieRocketRefreshHeader: false,
        child: _buildIdeaWidget(context));
  }
}

Widget _buildIdeaWidget(BuildContext context) {
  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
    margin: const EdgeInsets.all(
      15,
    ),
    alignment: Alignment.center,
    child: Text("Vip-发现"),
  );
}