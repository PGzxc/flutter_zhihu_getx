import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import '../../../i18n/i18n_keys.dart';
import '../../../provider/base_controller.dart';
import '../../../res/app_theme.dart';
import '../../../utils/logger/logger_util.dart';
import '../../../widget/keep_alive_wrapper.dart';
import '../../../widget/nav_sheet/r_nav_n_sheet.dart';
import '../../focus/views/focus_view.dart';
import '../../home/views/home_view.dart';
import '../../me/views/me_view.dart';
import '../../vip/views/vip_view.dart';
import '../../widgets/custom_main_page.dart';

/// 日期：2022-05-16
/// 描述：主页-主屏页面-Bod控制器
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class MainController extends BaseController {
  /// 响应式成员变量，默认位置指引0
  final _currentPage = 0.obs;

  set currentPage(index) => _currentPage.value = index;

  get currentPage => _currentPage.value;

  final _currentTitle = Keys.home.tr.obs;

  set currentTitle(index) => _currentTitle.value = bottomTabs[index].label!;

  get currentTitle => _currentTitle.value;

  // ///未读消息的数量
  // final _messageNum=0.obs;
  // set messageNum(value)=>_messageNum.value=value;
  // get messageNum=>_messageNum.value;

  /// PageView页面控制器
  late PageController pageController;

  /// 底部BottomNavigationBarItem
  late List<RNavItem> bottomTabs;

  late List<Widget> tabPageBodies;

  late final Rx<Widget?> _tabBody =tabPageBodies[0].obs ;
  set tabBody(index) => _tabBody.value = tabPageBodies[index];
  get tabBody => _tabBody.value;

  late CustomMainPage customMainPage;

  /// 底部Tab点击切换PageView
  void switchBottomTabBar(int index) {
     tabBody=index;
  }

  /// PageView切换更新当前index
  void onPageChanged(int index) {
    currentPage = index;
    currentTitle = index;
  }

  /// 生命周期
  /// 在Widget内存中分配后立即调用
  /// 可以用它来微控制器初始化initialize一些东西
  @override
  void onInit() {
    super.onInit();
    LoggerUtil.d('onInit()', tag: 'IndexController');
    pageController = PageController(initialPage: currentPage);

    /// 初始静态数据
    bottomTabs = <RNavItem>[
      const RNavItem(
        activeIcon: Remix.home_6_fill,
        icon: Remix.home_6_line,
        label: "首页",
      ),
      const RNavItem(
        icon: Remix.user_add_line,
        activeIcon: Remix.user_add_fill,
        label: "关注",
      ),
      const RNavItem(
        icon: Remix.vip_crown_2_line,
        activeIcon: Remix.vip_crown_2_fill,
        label: "会员",
      ),
      const RNavItem(
        icon: Remix.user_3_line,
        activeIcon: Remix.user_3_fill,
        label: "我的",
      ),
    ];

    tabPageBodies = <Widget>[
      ///使用了可滚动组件的页面缓存之后，使用KeepAliveWrapper包裹组件
      KeepAliveWrapper(keepAlive: true, child: HomeView()),
      KeepAliveWrapper(keepAlive: true, child: FocusView()),
      KeepAliveWrapper(keepAlive: true, child: VipView()),
      KeepAliveWrapper(keepAlive: true, child: MeView()),
    ];
  }

  ///在 onInit() 之后调用 1 帧。这是进入的理想场所
  ///导航事件，例如 snackbar、对话框或新route，或async 异步请求。
  @override
  void onReady() {
    super.onReady();
    // async 拉取数据
    LoggerUtil.d('onReady()', tag: 'MainController');
    if (isLogin) {}
  }

  ///在 [onDelete] 方法之前调用。 [onClose] 可能用于
  ///处理控制器使用的资源。就像 closing events 一样，
  ///或在控制器销毁之前的流。
  ///或者处置可能造成一些内存泄漏的对象，
  ///像 TextEditingControllers、AnimationControllers。
  ///将一些数据保存在磁盘上也可能很有用。
  @override
  void onClose() {
    super.onClose();
    // 1 stop & close 关闭对象
    // 2 save 持久化数据
    LoggerUtil.d('onClose()', tag: 'MainController');
  }

  ///dispose 释放内存
  @override
  void dispose() {
    // dispose释放对象
    pageController.dispose();
    super.dispose();
    LoggerUtil.d('dispose()', tag: 'MainController');
  }

  ///退出登陆
  void logout() {
    EasyLoading.show(status: '加载中...');
    provider.logout().then((value) {
      if (value.success) {
        isLogin = false;
        Get.back();
      } else {
        EasyLoading.showError('退出出错:${value.errorMsg}');
      }
      EasyLoading.dismiss();
    });
  }


}
