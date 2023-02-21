import 'package:flutter/cupertino.dart';
import 'package:flutter_zhihu_getx/pages/focus/contorllers/sub/focus_choose_controller.dart';
import 'package:flutter_zhihu_getx/pages/focus/widgets/focus_choose_list_view.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

/// 日期：2023-02-19
/// 描述：主页-主屏页面-关注--精选-页面


class FocusChooseView extends GetView<FocusChooseController> {
  const FocusChooseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //shrinkWrap: true,
        //physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.focusList.length,
        itemBuilder: (context, index) {
          return Obx(() => FocusChooseListView(
              focusChooseData: controller.focusList.value[index]));
        });
  }
}