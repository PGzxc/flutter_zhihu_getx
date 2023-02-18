import 'package:flutter_zhihu_getx/pages/focus/bindings/focus_binding.dart';
import 'package:flutter_zhihu_getx/pages/home/bindings/home_binding.dart';
import 'package:flutter_zhihu_getx/pages/home/views/sub/home_hot_rank_view.dart';
import 'package:flutter_zhihu_getx/pages/home/views/sub/home_idea_view.dart';
import 'package:flutter_zhihu_getx/pages/home/views/sub/home_recommend_view.dart';
import 'package:flutter_zhihu_getx/pages/me/bindings/me_binding.dart';
import 'package:flutter_zhihu_getx/pages/vip/bindings/vip_binding.dart';
import 'package:get/route_manager.dart';
import '../pages/home/bindings/home_commend_binding.dart';
import '../pages/main/bindings/main_binding.dart';
import '../pages/main/views/main_view.dart';
import '../pages/not_found/not_found_view.dart';
import 'app_routes.dart';

/// 日期：2022-05-15
/// 描述：页面路由配置项
/// 说明：nameToRoute将String转换为小写，且添加'/'前缀

class AppPages {
  static String init = Routes.main.nameToRoute();

  static final unknownRoute = GetPage(
      name: Routes.notFound.nameToRoute(), page: () => const NotFound());

  static final routes = [
    ///主界面
    GetPage(
      name: Routes.main.nameToRoute(),
      page: () => const MainView(),
      title: Routes.main,
      bindings: [
        MainBinding(),
        HomeBinding(),
        FocusBinding(),
        VipBinding(),
        MeBinding()
      ],
    ),

    ///首页-推荐
    GetPage(
        name: Routes.homeRecommend.nameToRoute(),
        page: () => const HomeRecommendView(),
        title: Routes.homeRecommend,
        binding: HomeReCommendBinding()),

    ///设置页面
    // GetPage(
    //     name: Routes.setting.nameToRoute(),
    //     page: () => const SettingView(),
    //     title: Routes.setting,
    //     binding: SettingBinding()),
  ];
}
