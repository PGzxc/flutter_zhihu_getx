import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../provider/refresh/refresh_paging_state_page.dart';
import '../../contorllers/sub/home_idea_controller.dart';

//StatelessWidget

class HomeIdeaView extends GetView<HomeIdeaController> {
  const HomeIdeaView({super.key});

  @override
  Widget build(BuildContext context) {
    //HomeIdeaController controller = Get.find(tag: "1");

    return RefreshPagingStatePage<HomeIdeaController>(
        controller: controller,
        onPressed: () => controller.onFirstInIdeaData(),
        onRefresh: () => controller.onRefreshIdeaData(),
        onLoadMore: () => controller.onLoadMoreIdeaData(),
        refreshController: controller.refreshController,
        header: const WaterDropHeader(),
        //header: const ClassicHeader(),
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
    child: Text("想法11111"),
  );
}
