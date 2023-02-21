import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import '../../../res/app_theme.dart';
import '../../../widget/nav_sheet/r_nav_n_sheet.dart';
import '../../sheet/main_sheet.dart';
import '../controllers/main_controller.dart';

/// 日期：2023-02-16
/// 描述：主页-主屏页面-Body
/// 说明：包含：MainScreen(主屏页面)+MenuScreen(抽屉页面)

class BodyView extends GetView<MainController> {
  BodyView({Key? key}) : super(key: key);
  late final Widget tabBody = controller.tabPageBodies[0];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: PreferredSize(
            //全局修改appBar的高度-0
            preferredSize: const Size.fromHeight(0),
            child: AppBar()),
        body: controller.tabBody,
        bottomNavigationBar: _buildBottomNavigationBar()));
  }

  /// 底部导航栏
  Widget _buildBottomNavigationBar() {
    int _index = 0;
    bool _open = false;
    return RNavNSheet(
      onTap: (index) {
        _index = index;
        controller.switchBottomTabBar(index);
      },
      initialSelectedIndex: _index,
      //sheet: Sheet(),
      sheetOpenIcon: Remix.menu_4_line,
      sheetCloseIcon: Remix.add_line,
      sheetCloseIconBoxColor: Colors.white,
      sheetCloseIconColor: AppTheme.nearlyDarkBlue,
      sheetOpenIconColor: Colors.white,
      onSheetToggle: (v) {
        _open = v;
        Fluttertoast.showToast(msg: "打开Shet");
      },
      items: controller.bottomTabs,
    );
  }

// Widget bottomBar(Widget tabBody) {
//   int _index = 0;
//   bool _open = false;
//   return Column(
//     children: <Widget>[
//       const Expanded(
//         child: SizedBox(),
//       ),
//       RNavNSheet(
//         onTap: (index) {
//           _index = index;
//           controller.switchBottomTabBar(index);
//           //switchBottomTabBar(tabBody, index);
//
//           // Future.delayed(const Duration(seconds: 1), () {
//           //   setState(() {
//           //     _index = index;
//           //     switchBottomTabBar(index);
//           //   });
//           // });
//         },
//         initialSelectedIndex: _index,
//         sheet: Sheet(),
//         sheetOpenIcon: Remix.menu_4_line,
//         sheetCloseIcon: Remix.add_line,
//         sheetCloseIconBoxColor: Colors.white,
//         sheetCloseIconColor: AppTheme.nearlyDarkBlue,
//         sheetOpenIconColor: Colors.white,
//         onSheetToggle: (v) {
//           _open = v;
//         },
//         items: controller.bottomTabs,
//       ),
//     ],
//   );
// }
}
