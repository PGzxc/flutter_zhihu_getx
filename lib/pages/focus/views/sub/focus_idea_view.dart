import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../contorllers/sub/focus_idea_controller.dart';

/// 日期：2023-02-19
/// 描述：主页-主屏页面-关注--想法-页面

class FocusIdeaView extends GetView<FocusIdeaController> {
  const FocusIdeaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("想法");
  }
}