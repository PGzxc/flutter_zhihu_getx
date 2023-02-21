# flutter_zhihu_getx

A new Flutter project.

## 一 项目介绍
* 本项目是基于Flutter语言开发的个人项目，仿制知乎(仅UI界面，如有侵权请告知)
* 项目所有框架及UI库均来自互联网(见下文开源库)

## 二 开发工具及版本
为防止开发工具及版本引起的运行异常，现将开发工具及版本告知如下：
* 开发系统：Windows 11 家庭中文版(版本号：21H2)
* 开发工具：IntelliJ IDEA 2022.2.4 (Community Edition)
* Flutter：3.7.3
* Dart：2.19.2
* Java: 19.0.2
* jre: 11.0.12
* Gradle: 7.5
* Kotlin: 1.7.10

## 三 发布版本
### v1.0
* 项目框架搭建(底部导航+切换界面)
* 底部导航参考：[r_nav_n_sheet][r_nav_n_sheet-site]和[Best-Flutter-UI-Templates][Best-Flutter-UI-site]
* 点击首页、关注、会员、我的分别切换到对应界面，点击中间+号弹出Sheet
### v2.0
* 首页和会员页面主体框架搭建
* 状态栏显示异常问题
* 解决底部导航引起的body显示不全问题

### v3.0
* 首页—>想法 页面完成
* 首页—>推荐->全站 页面完成
* 首页—>热榜 页面完成

### v4.0
* 关注->精选 页面完成
* 会员->发现 页面完成
* 我的 界面完成(包含未登录和已登录)

## 四 运行说明
由于我的界面->回答问题通过滑动移除上一张，获取下一张卡片的信息中使用了第三方库`flutter_tindercard(null safety)`，无法直接运行，可通过以下两种途径：
方法一：cmd终端执行如下指令：

```
flutter run --no-sound-null-safety
flutter build apk --no-sound-null-safety
```

方法2：Run/Debug Configurations的Additional run args：中添加如下参数

```
--no-sound-null-safety
```
## 五 项目截图

| ![][z-1] | ![][z-2]  | ![][z-3] | ![][z-4] |
| :------: | :-------: | :------: | -------- |
| ![][z-5] | ![][z-6]  | ![][z-7] | ![][z-8] |
| ![][z-9] | ![][z-10] |          |          |


## 六  开源库
* GetX 是Flutter 的一个超轻且强大的解决方案。项目地址：https://github.com/jonataslaw/getx
* flutter_pulltorefresh:下拉刷新，上拉加载。项目地址：https://pub.flutter-io.cn/packages/pull_to_refresh
* flutter_easyloading:加载对话框。项目地址：https://pub.flutter-io.cn/packages/flutter_easyloading
* Logger 小型、易于使用且可扩展的打印漂亮的日志。项目地址：https://pub.flutter-io.cn/packages/logger
* shared_preferences，简单数据持久化存储。项目地址：https://pub.flutter-io.cn/packages/shared_preferences
* connectivity_plus: 网络连接工具。项目地址：https://pub.flutter-io.cn/packages/connectivity_plus
* lottie动画。项目地址：https://pub.flutter-io.cn/packages/lottie
* shimmer。拉表刷新时，显示前的加载框架。项目地址：https://pub.flutter-io.cn/packages/shimmer
* getwidget：google开源的UI Kit工具库，包含1000多个Widget组件。简化开发流程。项目地址：https://pub.flutter-io.cn/packages/getwidget
* Remix Icon 是一套面向设计师和开发者的开源图标库。项目地址：https://pub.flutter-io.cn/packages/remixicon
* flutter_staggered_grid_view 网格布局合集。项目地址：https://github.com/letsar/flutter_staggered_grid_view
* font_awesome_flutter 图标库。项目地址:https://pub.flutter-io.cn/packages/font_awesome_flutter
* fluttertoast: Flutter中Toast工具。项目地址：https://pub.flutter-io.cn/packages/fluttertoast
* flutter_quill: 富文本编辑器。项目地址：https://pub.flutter-io.cn/packages/flutter_quill
* flutter_tindercard:通过滑动移除上一张，获取下一张卡片的信息。项目地址：https://pub.flutter-io.cn/packages/flutter_tindercard



[r_nav_n_sheet-site]:https://pub.flutter-io.cn/packages/r_nav_n_sheet
[Best-Flutter-UI-site]:https://github.com/mitesh77/Best-Flutter-UI-Templates


[z-1]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-home-idea.png
[z-2]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-home-idea-refresh.png
[z-3]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-home-recommend.png
[z-4]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-home-hot-rank.png
[z-5]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-home-pub.png
[z-6]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-focus.png
[z-7]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-vip-find.png
[z-8]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-me-unlogin.png
[z-9]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-me-login.png
[z-10]:https://cdn.staticaly.com/gh/PGzxc/CDN/master/blog-resume/zh-user-login.png

