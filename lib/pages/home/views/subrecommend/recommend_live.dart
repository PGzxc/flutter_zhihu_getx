
import 'package:flutter/cupertino.dart';
import 'package:flutter_zhihu_getx/pages/home/contorllers/subrecommend/recommend_live_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

///日期：2023-02-18
///描述：首页-推荐-直播

class RecommendLiveView extends GetView<RecommendLiveController> {
  const RecommendLiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("直播");
  }
}