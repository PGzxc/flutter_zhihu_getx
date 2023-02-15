import 'package:get/instance_manager.dart';

import '../controllers/main_controller.dart';


/// 日期：2022-05-16
/// 描述：主页-页面绑定
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class MainBinding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => MainController());

    //Get.lazyPut(() => HomeController());

  }
}