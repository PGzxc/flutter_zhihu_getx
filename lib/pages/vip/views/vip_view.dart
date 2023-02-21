import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:remixicon/remixicon.dart';

import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../../../res/app_theme.dart';
import '../../../res/gaps.dart';
import '../contorllers/vip_controller.dart';

/// 日期：2023-02-15
/// 描述：主页-Vip页面
/// 说明：
class VipView extends GetView<VipController> {
  const VipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: _buildVipWidget(context)),
    );

      // RefreshPagingStatePage<VipController>(
      //   controller: controller,
      //   onPressed: () => controller.onFirstInVipData(),
      //   onRefresh: () => controller.onRefreshVipData(),
      //   onLoadMore: () => controller.onLoadMoreVipData(),
      //   refreshController: controller.refreshController,
      //   header: const ClassicHeader(),
      //   lottieRocketRefreshHeader: false,
      //   child: Scaffold(
      //     body: Container(
      //         alignment: Alignment.center,
      //         child: _buildVipWidget(context)),
      //   ));
  }

  Widget _buildVipWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.center,
                      child: TabBar(
                          tabs: controller.tabValues.map((f) {
                            return Text(f);
                          }).toList(),
                          controller: controller.homeTabController,
                          indicatorColor: Colors.red,
                          indicatorSize: TabBarIndicatorSize.tab,
                          isScrollable: true,
                          labelColor: Colors.red,
                          unselectedLabelColor: Colors.black,
                          indicatorWeight: 5.0,
                          labelStyle:
                          const TextStyle(height: 2, fontSize: 15)))),
              Row(
                children: const [
                  Gaps.hGap5,
                  Icon(Remix.notification_4_line)
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
              controller: controller.homeTabController,
              children: controller.tabPageBodies),
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom)
      ],
    );
  }
}
