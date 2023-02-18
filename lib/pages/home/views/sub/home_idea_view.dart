import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_zhihu_getx/pages/home/models/idea_grid_data.dart';
import 'package:flutter_zhihu_getx/pages/home/widgets/idea_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../provider/refresh/refresh_paging_state_page.dart';
import '../../contorllers/sub/home_idea_controller.dart';

//StatelessWidget

class HomeIdeaView extends GetView<HomeIdeaController> {
  const HomeIdeaView({super.key});

  static const pattern = [
    WovenGridTile(
      5 / 7,
      crossAxisRatio: 1,
      alignment: AlignmentDirectional.topStart,
    ),
    WovenGridTile(
      5 / 7,
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
        child: _buildIdeaWidget(pattern, controller)

        //Container(color: Colors.black12,child: _buildIdeaWidget(pattern))
        //_buildIdeaWidget(pattern)
        );
  }
}

Widget _buildIdeaWidget(
    List<WovenGridTile> pattern, HomeIdeaController controller) {
  return
      // SliverGrid(delegate:  SliverChildBuilderDelegate((context, index) {
      //   return IdeaStaggeredGridView(ideaGridData: controller.ideaList.value[index],);
      //   //IdeaStaggeredGridView(ideaGridData: IdeaGridData.idealList[index]);
      // }, childCount: IdeaGridData.idealList.length), gridDelegate: SliverWovenGridDelegate.count(
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 8,
      //   crossAxisSpacing: 8,
      //   pattern: pattern,
      // ));

      GridView.custom(
    cacheExtent: 100,
    gridDelegate: SliverWovenGridDelegate.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      pattern: pattern,
    ),
    childrenDelegate: SliverChildBuilderDelegate((context, index) {
      return Obx(() => IdeaStaggeredGridView(
            ideaGridData: controller.ideaList.value[index],
          ));
      //IdeaStaggeredGridView(ideaGridData: IdeaGridData.idealList[index]);
    }, childCount: IdeaGridData.idealList.length),
  );
}
