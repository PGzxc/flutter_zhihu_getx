import 'package:flutter/cupertino.dart';
import 'package:flutter_zhihu_getx/pages/focus/contorllers/sub/focus_new_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

/// 日期：2023-02-19
/// 描述：主页-主屏页面-关注--最新-页面

class FocusNewView extends GetView<FocusNewController> {
  const FocusNewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("最新");
  }
}