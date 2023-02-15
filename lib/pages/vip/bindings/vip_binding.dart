import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../contorllers/vip_controller.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-会员--绑定(界面与控制器)
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class VipBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => VipController());
  }

}