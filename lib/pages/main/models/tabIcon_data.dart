import 'package:flutter/material.dart';

class TabIconData<T> {
  TabIconData({
    this.icon=Icons.add,
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;
  IconData icon;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    //TabBar-首页
    TabIconData(
      imagePath: 'assets/icon/ic_home.webp',
      selectedImagePath: 'assets/icon/ic_home_selected.webp',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    //TabBar-关注
    TabIconData(
      imagePath: 'assets/icon/ic_focus.webp',
      selectedImagePath: 'assets/icon/ic_focus_selected.webp',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    //TabBar-会员
    TabIconData(
      imagePath: 'assets/icon/ic_member.webp',
      selectedImagePath: 'assets/icon/ic_member_selected.webp',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    //TabBar-会员
    TabIconData(
      imagePath: 'assets/icon/ic_me.webp',
      selectedImagePath: 'assets/icon/ic_me_selected.webp',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
