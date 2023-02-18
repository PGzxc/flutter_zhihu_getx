import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_all_controller.dart';
import 'package:flutter_zhihu_getx/pages/home/widgets/recommend_all_list_view.dart';
import 'package:flutter_zhihu_getx/res/gaps.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../models/recommend_all_data.dart';

///日期：2023-02-18
///描述：首页-推荐-全站

class RecommendAllView extends GetView<RecommendAllController> {
  const RecommendAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [getSearchBarUI(context), getRecommendAllView()],
    ));
  }

  //1-TabBar下方的搜索视图
  Widget getSearchBarUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 64,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.blue, width: 1)),
            child: Row(
              children: [
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
                      labelText: '异地恋如何维持长久| 如何维护长期的恋爱关系',
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                      width: 1,
                      height: 20,
                      child: Container(color: Colors.grey)),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text("搜索",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //列表
  Widget getRecommendAllView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: RecommendAllData.recommendAllList.length,
        itemBuilder: (context, index) {
          return RecommendAllListView(
              recommendAllData: RecommendAllData.recommendAllList[index]);
        });
  }
}
