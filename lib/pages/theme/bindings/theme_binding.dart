import 'package:get/instance_manager.dart';
import '../controllers/theme_controller.dart';

/// 日期：2023-02-16
/// 描述：主页-主屏页面-Body-me-设置-theme-binding
/// 说明：
class ThemeBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ThemeController());
  }
}