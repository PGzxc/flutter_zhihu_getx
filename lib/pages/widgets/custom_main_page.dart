import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/focus/views/focus_view.dart';
import 'package:flutter_zhihu_getx/pages/home/views/home_view.dart';
import 'package:flutter_zhihu_getx/pages/me/views/me_view.dart';
import 'package:flutter_zhihu_getx/pages/vip/views/vip_view.dart';
import 'package:remixicon/remixicon.dart';
import '../../res/app_theme.dart';
import '../../widget/keep_alive_wrapper.dart';
import '../../widget/nav_sheet/r_nav_n_sheet.dart';
import '../sheet/main_sheet.dart';

List<Widget> pageBodies = <Widget>[
  ///使用了可滚动组件的页面缓存之后，使用KeepAliveWrapper包裹组件
  KeepAliveWrapper(keepAlive: true, child: HomeView()),
  KeepAliveWrapper(keepAlive: true, child: FocusView()),
  KeepAliveWrapper(keepAlive: true, child: VipView()),
  KeepAliveWrapper(keepAlive: true, child: MeView()),

  //Container(color: AppTheme.nearlyDarkBlue, child: Text("AA")),
  //Container(color: AppTheme.nearlyBlue, child: Text("BB")),
  //Container(color: AppTheme.nearlyBlack, child: Text("CC")),
  //Container(color: AppTheme.deactivatedText, child: Text("DD")),
];

class CustomMainPage extends StatefulWidget {
  CustomMainPage({super.key});

  @override
  State<StatefulWidget> createState() => _CustomMainPageState();
}

class _CustomMainPageState extends State<CustomMainPage> {

  Widget tabBody = pageBodies[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              tabBody,
              bottomBar(),
            ],
          )),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Widget bottomBar() {
    int _index = 0;
    bool _open = false;
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        RNavNSheet(
          onTap: (index) {
            setState(() {
              _index = index;
              switchBottomTabBar(index);
            });
            // Future.delayed(const Duration(seconds: 1), () {
            //   setState(() {
            //     _index = index;
            //     switchBottomTabBar(index);
            //   });
            // });
          },
          initialSelectedIndex: _index,
          sheet: Sheet(),
          sheetOpenIcon: Remix.menu_4_line,
          sheetCloseIcon: Remix.add_line,
          sheetCloseIconBoxColor: Colors.white,
          sheetCloseIconColor: AppTheme.nearlyDarkBlue,
          sheetOpenIconColor: Colors.white,
          onSheetToggle: (v) {
            setState(() {
              _open = v;
            });
          },
          items: const [
            RNavItem(
              activeIcon: Remix.home_6_fill,
              icon: Remix.home_6_line,
              label: "首页",
            ),
            RNavItem(
              icon: Remix.user_add_line,
              activeIcon: Remix.user_add_fill,
              label: "关注",
            ),
            RNavItem(
              icon: Remix.vip_crown_2_line,
              activeIcon: Remix.vip_crown_2_fill,
              label: "会员",
            ),
            RNavItem(
              icon: Remix.user_3_line,
              activeIcon: Remix.user_3_fill,
              label: "我的",
            ),
          ],
        ),
      ],
    );
  }

  void switchBottomTabBar(int index) {
    switch (index) {
      case 0:
        tabBody = pageBodies[0];
        break;
      case 1:
        tabBody = pageBodies[1];
        break;
      case 2:
        tabBody = pageBodies[2];
        break;
      case 3:
        tabBody = pageBodies[3];
        break;
    }
  }
}
