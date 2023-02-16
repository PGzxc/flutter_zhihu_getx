import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_find_controller.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_purchase_controller.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_salt_book_controller.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_salt_knowledge_controller.dart';
import 'package:flutter_zhihu_getx/pages/vip/contorllers/sub/vip_salt_story_controller.dart';
import 'package:get/get.dart';
import '../contorllers/sub/vip_salt_evaluate_controller.dart';
import '../contorllers/vip_controller.dart';

/// 日期：2023-02-15
/// 描述：主页-主屏页面-会员--绑定(界面与控制器)
/// 说明：将BaseController替换为BaseRefreshController，可刷新的Controller

class VipBinding extends Bindings{
  @override
  void dependencies() {
    //Vip下一级控制器绑定
    Get.lazyPut(() => VipFindController());
    Get.lazyPut(() => VipPurchaseController());
    Get.lazyPut(() => VipSaltBookController());
    Get.lazyPut(() => VipSaltEvaluateController());
    Get.lazyPut(() => VipSaltKnowledgeController());
    Get.lazyPut(() => VipSaltStoryController());



    //Vip主控制器绑定
    Get.lazyPut(() => VipController());
  }

}