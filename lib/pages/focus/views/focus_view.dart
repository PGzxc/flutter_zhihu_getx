import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:remixicon/remixicon.dart';

import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../../../res/app_theme.dart';
import '../../../res/gaps.dart';
import '../contorllers/focus_controller.dart';

/// 日期：2023-02-16
/// 描述：主页-关注页面
/// 说明：

class FocusView extends GetView<FocusController> {
  const FocusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshPagingStatePage<FocusController>(
        controller: controller,
        onPressed: () => controller.onFirstInFocusData(),
        onRefresh: () => controller.onRefreshFocusData(),
        onLoadMore: () => controller.onLoadMoreFocusData(),
        refreshController: controller.refreshController,
        header: const ClassicHeader(),
        lottieRocketRefreshHeader: false,
        child: Scaffold(
          body: Column(
              children: [
                _buildTopBar(),
                _buildSearch(context),
                _buildTabList(controller)
              ],
            ),
          ),
        );
  }

  //1-顶部Tab
  Widget _buildTopBar() {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.center,
                    child: const Text("关注", style: TextStyle(fontSize: 15)))),
            Row(
              children: const [
                Icon(Remix.search_line),
                Gaps.hGap5,
                Icon(Remix.notification_4_line)
              ],
            ),
          ],
        ),
      ),
    );
  }

  //2-搜索框
  Widget _buildSearch(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 54,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/images/focus_idea.webp",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: '分享你此刻的想法...',
                      border: InputBorder.none,
                      helperStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        letterSpacing: 0.2,
                        color: Colors.grey,
                      ),
                    ),
                    onEditingComplete: () {},
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //3-Tab+List
  Widget _buildTabList(FocusController controller) {
    return  Expanded(
        child: Column(
      children: [
        Row(
          children: [
            TabBar(
                tabs: controller.tabValues.map((f) {
                  return Text(f);
                }).toList(),
                controller: controller.homeTabController,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                indicatorWeight: 5.0,
                labelStyle: const TextStyle(height: 2, fontSize: 15)),
            const Expanded(child: SizedBox())
          ],
        ),
        Expanded(
          child: TabBarView(
              controller: controller.homeTabController,
              children: controller.tabPageBodies),
        )
      ],
    ));
  }
}
