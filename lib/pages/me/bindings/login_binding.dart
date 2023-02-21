
import 'package:flutter_zhihu_getx/pages/me/contorllers/login_controller.dart';
import 'package:get/get.dart';


/// 日期：2023-02-15
/// 描述：主页-主屏页面-我的--绑定(界面与控制器)
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}