import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/res/gaps.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:remixicon/remixicon.dart';
import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../contorllers/home_controller.dart';

/// 日期：2022-05-15
/// 描述：主页-首页页面
/// 说明：

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildHomeWidget(context));
  }

  Widget _buildHomeWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            children: [
              const Icon(Remix.book_read_line),
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
                          labelStyle: const TextStyle(height: 2, fontSize: 15)))),
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
