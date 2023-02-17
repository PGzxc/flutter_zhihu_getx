import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/main/controllers/main_controller.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import '../../../res/app_theme.dart';
import '../../../widget/nav_sheet/r_nav_n_sheet.dart';
import '../../sheet/main_sheet.dart';

class MainCustomView extends StatefulWidget {
  const MainCustomView({super.key});

  @override
  State<StatefulWidget> createState() => _MainCustomViewState();
}

class _MainCustomViewState extends State<MainCustomView> {
  MainController controller = Get.find<MainController>();
  Widget tabBody = Get.find<MainController>().tabPageBodies[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
              //全局修改appBar的高度-0
              preferredSize: const Size.fromHeight(0),
              child: AppBar()),
          body: Stack(
            children: <Widget>[
              Column(children: [
                //此处解决tabBody显示不全问题(部分位于bottomBar下方)
                Expanded(flex: 1, child: tabBody),
                Padding(padding: EdgeInsets.only(bottom: 62 + MediaQuery.of(context).padding.bottom))
              ]),
              bottomBar(),
            ],
          )),
    );
  }

  Widget bottomBar() {
    int _index = 0;
    bool _open = false;
    return Column(
      children: <Widget>[
        const Expanded(child: SizedBox()),
        RNavNSheet(
          onTap: (index) {
            _index = index;
            setState(() {
              tabBody = controller.tabPageBodies[index];
              //controller.switchBottomTabBar(index);
            });
          },
          initialSelectedIndex: _index,
          sheet: Sheet(),
          sheetOpenIcon: Remix.menu_4_line,
          sheetCloseIcon: Remix.add_line,
          sheetCloseIconBoxColor: Colors.white,
          sheetCloseIconColor: AppTheme.nearlyDarkBlue,
          sheetOpenIconColor: Colors.white,
          onSheetToggle: (v) {
            _open = v;
          },
          items: controller.bottomTabs,
        ),
      ],
    );
  }
}
