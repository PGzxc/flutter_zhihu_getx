import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_find_controller.dart';
import 'package:flutter_zhihu_getx/pages/vip/models/vip_discover_book_data.dart';
import 'package:flutter_zhihu_getx/pages/vip/widgets/vip_book_grid_view.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: _buildIdeaWidget(context),
        ));
  }
}

Widget _buildIdeaWidget(BuildContext context) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 2.3, //宽高比
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      scrollDirection: Axis.vertical,
      itemCount: VipDiscoverBookData.focusChooseList.length,
      itemBuilder: (context, index) {
        return VipBookGridView(
            vipDiscoverBookData: VipDiscoverBookData.focusChooseList[index]);
      });
}
