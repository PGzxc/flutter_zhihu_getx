import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_salt_knowledge_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../provider/refresh/refresh_paging_state_page.dart';

/// 日期：2023-02-16
/// 描述：主页-Vip页面-盐知识
/// 说明：

class VipSaltKnowledgeView extends GetView<VipSaltKnowledgeController> {
  const VipSaltKnowledgeView({super.key});

  @override
  Widget build(BuildContext context) {


    return RefreshPagingStatePage<VipSaltKnowledgeController>(
        controller: controller,
        onPressed: () => controller.onFirstInVipSaltKnowledgeData(),
        onRefresh: () => controller.onRefreshVipSaltKnowledgeData(),
        onLoadMore: () => controller.onLoadMoreVipSaltKnowledgeData(),
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
    child: Text("Vip-盐知识"),
  );
}