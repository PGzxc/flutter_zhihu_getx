import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../provider/refresh/refresh_paging_state_page.dart';
import '../../contorllers/sub/home_idea_controller.dart';

//StatelessWidget

class HomeIdeaView extends GetView<HomeIdeaController> {
  const HomeIdeaView({super.key});
  static const pattern = [
    WovenGridTile(
      5/8,
      crossAxisRatio: 1,
      alignment: AlignmentDirectional.topStart,
    ),
    WovenGridTile(
      5/7.5,
      crossAxisRatio: 1,
      alignment: AlignmentDirectional.topStart,
    ),
  ];
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
        child: _buildIdeaWidget(context,pattern));
  }
}

Widget _buildIdeaWidget(BuildContext context,List<WovenGridTile> pattern) {

  return GridView.custom(
    cacheExtent: 100,
    gridDelegate: SliverWovenGridDelegate.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      pattern: pattern,
    ),
    childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
          return Container(width: 100,height: 200,child: Text("Text$index"),decoration: new BoxDecoration(color: Colors.grey,));
        },childCount: 16
    ),
  );

  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
    margin: const EdgeInsets.all(
      15,
    ),
    alignment: Alignment.center,
    child: Text("想法11111"),
  );
}
