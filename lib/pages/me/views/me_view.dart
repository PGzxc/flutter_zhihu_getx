import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter_zhihu_getx/pages/me/gradle/me_question_data.dart';
import 'package:flutter_zhihu_getx/pages/me/widgets/me_question_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:remixicon/remixicon.dart';
import '../../../provider/refresh/refresh_paging_state_page.dart';
import '../../../res/gaps.dart';
import '../../../routes/app_routes.dart';
import '../contorllers/me_controller.dart';
import 'login_view.dart';

/// 日期：2023-02-16
/// 描述：主页-我的页面
/// 说明：
class MeView extends GetView<MeController> {
   MeView({Key? key}) : super(key: key);
   var arguments= Get.arguments;
  @override
  Widget build(BuildContext context) {
   var arguments= Get.arguments;
    return RefreshPagingStatePage<MeController>(
        controller: controller,
        onPressed: () => controller.onFirstInMeData(),
        onRefresh: () => controller.onRefreshMeData(),
        onLoadMore: () => controller.onLoadMoreMeData(),
        refreshController: controller.refreshController,
        header: const ClassicHeader(),
        lottieRocketRefreshHeader: false,
        child: Scaffold(
            body: Obx(()=>Column(
              children: [
                _buildTopBar(),
                _buildHead(controller.isLogin, context),
                _buildOpenVip(),
                Flexible(child: _buildGridView(controller.isLogin)),
                _buildDivider(),
                _buildCreate(),
                _buildDivider(),
                _buildAnswerQuest(context),
              ],
            ))
        ));
  }

  Widget _buildDivider(){
    return  SizedBox(width: double.infinity, height: 10, child: Container(color: Colors.black12));
  }
  //1-顶部Tab
  Widget _buildTopBar() {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: Row(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(),
                child: Icon(Remix.fullscreen_line)),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(Remix.search_line),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: '搜索知乎内容',
                          border: InputBorder.none,
                          helperStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            letterSpacing: 0.2,
                            color: Colors.grey,
                          ),
                        ),
                        onEditingComplete: () {},
                      ),
                    )),
                  ],
                ),
              ),
            )),
            Row(
              children: const [
                Icon(Remix.contrast_line),
                Gaps.hGap5,
                Icon(Remix.settings_line),
                Gaps.hGap5,
                Icon(Remix.notification_4_line)
              ],
            ),
          ],
        ),
      ),
    );
  }

  //2-头部
  Widget _buildHead(bool isLogin, BuildContext context) {
    return Container(
      //color: Colors.grey,
      //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Column(
        children: [
          //信息部分
          !isLogin
              ? InkWell(onTap:()=>{Get.toNamed(Routes.login.nameToRoute())
          } ,child: SizedBox(
            height: 120,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("点我登录 >",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(8), width: 40, height: 40, child: Image.asset('assets/images/me_login_phone.webp', width: 25, height: 25)),
                        Container(padding: const EdgeInsets.all(8), width: 40, height: 40, child: Image.asset('assets/images/me_login_wx.webp', width: 25, height: 25)),
                        Container(padding: const EdgeInsets.all(8), width: 40, height: 40, child: Image.asset('assets/images/me_login_qq.webp', width: 25, height: 25)),
                      ],
                    ),
                  ],
                ),
                Expanded(child: Container(alignment: Alignment.centerRight, child: SizedBox(width: 100, height: 100, child: Image.asset('assets/images/me_unlogin_img.webp')),))
              ],
            ),
          ),)
              : Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                              child: Image.asset(
                                  'assets/images/focus_idea.webp'))),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("张三",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: SizedBox(
                              width: 140,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 2), child: Icon(Remix.copper_coin_line)),
                                  Text('知乎盐值: 270 >', style: TextStyle(fontSize: 10, color: Colors.lightBlue)),
                                  Expanded(flex: 1, child: SizedBox())
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 50,
                        child: Text('个人主页 >', style: TextStyle(fontSize: 13)),
                      )
                    ],
                  ),
                ),
          //分割线
          SizedBox(
            width: double.infinity,
            height: 1,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: TextButton(
                      onPressed: () {},
                      child: SizedBox(
                        height: 50.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                              isLogin ? "57" : '--',
                              style: const TextStyle(
                                  fontSize: 16.0, color: Colors.black),
                            ),
                            const Text(
                              "我的创作",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            ),
                          ],
                        ),
                      )),
                ),
                Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          start:
                              BorderSide(color: Colors.black12, width: 1.0))),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                              isLogin ? '210' : '--',
                              style: const TextStyle(
                                  fontSize: 16.0, color: Colors.black),
                            ),
                            const Text(
                              "关注",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          start:
                              BorderSide(color: Colors.black12, width: 1.0))),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: TextButton(
                      onPressed: () {},
                      child: SizedBox(
                        height: 50.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                              isLogin ? "18" : '--',
                              style: const TextStyle(
                                  fontSize: 16.0, color: Colors.black),
                            ),
                            const Text(
                              "我的收藏",
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: const BoxDecoration(
                      border: BorderDirectional(
                          start:
                              BorderSide(color: Colors.black12, width: 1.0))),
                ),
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 6.0) / 4,
                    child: TextButton(
                        onPressed: () {},
                        child: SizedBox(
                          height: 50.0,
                          child: Column(
                            children: <Widget>[
                              Text(
                                isLogin ? "33" : '--',
                                style: const TextStyle(
                                    fontSize: 16.0, color: Colors.black),
                              ),
                              const Text(
                                "最近浏览",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black),
                              )
                            ],
                          ),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }

  //3-开通盐选会员
  Widget _buildOpenVip() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(244, 164, 96, 1.0),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(244, 164, 96, 1.0),
            Color.fromRGBO(252, 230, 201, 1.0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("开通盐选会员",
                        style: TextStyle(fontSize: 12, color: Colors.brown,fontWeight: FontWeight.bold)),
                    Text("畅想10w+优质内容",
                        style: TextStyle(fontSize: 10, color: Colors.orange))
                  ],
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(210, 105, 30, 1.0),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: SizedBox(
                      width: 110,
                      height: 30,
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text("最低0.3元/天", style: TextStyle(fontSize: 12, color: Colors.brown)),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          )),
    );
  }

  //4-表格图
  Widget _buildGridView(
    bool isLogin,
  ) {
    final unLoginIcons = [
      {
        "i": Remix.wallet_2_line,
        "t": "钱包",
      },
      {
        "i": Remix.plant_line,
        "t": "社区共建",
      },
      {
        "i": Remix.customer_service_line,
        "t": "帮助与客服",
      },
      {
        "i": Remix.bilibili_line,
        "t": "直播",
      },
    ];
    final loginIcons = [
      {
        "i": Remix.book_line,
        "t": "书架",
      },
      {
        "i": Remix.shopping_bag_line,
        "t": "已购",
      },
      {
        "i": Remix.money_cny_circle_line,
        "t": "付费咨询",
      },
      {
        "i": Remix.flag_line,
        "t": "活动广场",
      },
      {
        "i": Remix.wallet_2_line,
        "t": "钱包",
      },
      {
        "i": Remix.plant_line,
        "t": "社区共建",
      },
      {
        "i": Remix.customer_service_line,
        "t": "帮助与客服",
      },
      {
        "i": Remix.bilibili_line,
        "t": "直播",
      },
    ];

    return Container(color: Colors.transparent,child: Wrap(
      spacing: 10,
      runSpacing: 10,
      direction: Axis.horizontal,
      children: [
        for (var icon in isLogin? loginIcons: unLoginIcons)
          SizedBox(width: 90,height: 70,child: Container(alignment: Alignment.center,color: Colors.white24,child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon((icon["i"] as IconData)),
              const SizedBox(height: 2),
              Text("${icon["t"]}",
                  style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.normal,fontSize: 12)),
            ],
          ),),)
      ],
    ),);
  }
  //5-开始创作
  Widget _buildCreate() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1.0),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("开始你的第一篇内容创作",
                        style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("发布首篇内容，开通创作中心",
                        style: TextStyle(fontSize: 10, color: Colors.black))
                  ],
                ),
                Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(240, 255, 255, 1.0),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: SizedBox(
                          width: 80,
                          height: 30,
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text("去创作",
                                style:
                                TextStyle(fontSize: 11, color: Colors.blue)),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
  //6-回答问题
 Widget _buildAnswerQuest(BuildContext context){
   CardController controller;
   List<Widget> meQuestionViews= [];
    for(MeQuestionData meQuestionData in MeQuestionData.meQuestionList)
    {
      meQuestionViews.add(MeQuestionView(meQuestionData: meQuestionData));
    }

  return Expanded(child: Container(decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: Colors.black26),child: Column(children: [
    Container(padding: const EdgeInsets.all(8),child:   SizedBox(height: 20,child: Row(children: const [
      Text("回答问题",style: TextStyle(fontSize: 11),),
      Expanded(child: SizedBox()),
      Text("更多问题 >",style: TextStyle(fontSize: 10),),
    ],),)),
    Expanded(child: TinderSwapCard(
      swipeUp: true,
      swipeDown: true,
      orientation: AmassOrientation.RIGHT,
      totalNum: meQuestionViews.length,
      stackNum: 3,
      swipeEdge: 4.0,
      maxWidth: MediaQuery.of(context).size.width * 0.9,
      maxHeight: MediaQuery.of(context).size.width * 0.3,
      minWidth: MediaQuery.of(context).size.width * 0.8,
      minHeight: MediaQuery.of(context).size.width * 0.2,
      cardBuilder: (context, index) => meQuestionViews[index],
      cardController: controller = CardController(),
      swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
        /// Get swiping card's alignment
        if (align.x < 0) {
          //Card is LEFT swiping
        } else if (align.x > 0) {
          //Card is RIGHT swiping
        }
      },
      swipeCompleteCallback:
          (CardSwipeOrientation orientation, int index) {
        /// Get orientation & index of swiped card!
      },
    ),)
  ],),));


   // Expanded(child: TinderSwapCard(
   // swipeUp: true,
   // swipeDown: true,
   // orientation: AmassOrientation.RIGHT,
   // totalNum: meQuestionViews.length,
   // stackNum: 3,
   // swipeEdge: 4.0,
   // maxWidth: MediaQuery.of(context).size.width * 0.9,
   // maxHeight: MediaQuery.of(context).size.width * 0.3,
   // minWidth: MediaQuery.of(context).size.width * 0.8,
   // minHeight: MediaQuery.of(context).size.width * 0.2,
   // cardBuilder: (context, index) => meQuestionViews[index],
   // cardController: controller = CardController(),
   // swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
   // /// Get swiping card's alignment
   // if (align.x < 0) {
   // //Card is LEFT swiping
   // } else if (align.x > 0) {
   // //Card is RIGHT swiping
   // }
   // },
   // swipeCompleteCallback:
   // (CardSwipeOrientation orientation, int index) {
   // /// Get orientation & index of swiped card!
   // },
   // ),);

}
}
