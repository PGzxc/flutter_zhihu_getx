import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/focus/models/focus_choose_data.dart';
import 'package:flutter_zhihu_getx/pages/home/models/recommend_all_data.dart';
import 'package:flutter_zhihu_getx/res/gaps.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:remixicon/remixicon.dart';

///@描述：关注-精选-自定义ViewItem
///

class FocusChooseListView extends StatelessWidget {
  const FocusChooseListView({Key? key, required this.focusChooseData, this.callback,this.callbackRecommend,this.callbackBottom})
      : super(key: key);

  final FocusChooseData focusChooseData;
  final VoidCallback? callback;
  final VoidCallback? callbackRecommend; //推荐点击
  final VoidCallback? callbackBottom; //底部更多点击

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Column(
        children: [
          Container(
            color: Colors.white10,
            height: 240,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(children:  [  //顶部的推荐
                    const SizedBox(width: 20,height: 20,child: Icon(Remix.user_shared_line)),
                    Expanded(child: Padding(padding: const EdgeInsets.only(left: 8),child: Text(focusChooseData.recommend,style: const TextStyle(color: Colors.black45,fontSize: 12)),)),
                    InkWell(onTap: callbackRecommend,child: const Icon(Remix.more_line)),
                  ]),
                  const SizedBox(height: 8),
               SizedBox(height: 50,child:   Row(children: [
                 SizedBox(
                     width: 40,
                     height: 40,
                     child: CircleAvatar(
                       backgroundImage: AssetImage(
                           focusChooseData.authImagePath),
                     )),
                Expanded(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 8),child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text(focusChooseData.authName,style: const TextStyle(fontSize: 13)),
                  const SizedBox(height: 2),
                  Text(focusChooseData.pubTime,style: const TextStyle(fontSize: 10)),
                ],),)),
                 focusChooseData.isFocused? const GFButton(onPressed:null,text: '已关注',color: GFColors.LIGHT):GFButton(onPressed:  ()=>{},text: '+ 关注',textColor: Colors.blue,color: Colors.black12,)
               ],)
             ,), Expanded(child: Column(children: [
                    SizedBox(
                        width: double.infinity,
                        child: Text(focusChooseData.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13))),
                    const SizedBox(height: 8),
                    Expanded(
                        child: Text(focusChooseData!.content,
                            style: const TextStyle(fontSize: 13),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis)),
                    const SizedBox(height: 8)
                  ],)),
             //标题
                  Row(
                    children: [
                      Row(children: [
                        const SizedBox(width: 30,height: 30,child: Icon(Remix.airplay_line)),
                        Padding(padding: const EdgeInsets.only(left: 5),child: Text(focusChooseData.zanNum,style: const TextStyle(fontSize: 10)),)
                      ]),
                      const SizedBox(width: 30),
                      Row(children: [
                        const SizedBox(width: 30,height: 30,child: Icon(Remix.star_smile_line)),
                        Padding(padding: const EdgeInsets.only(left: 5),child: Text(focusChooseData.collectNum,style: const TextStyle(fontSize: 10)),)
                      ]),
                      const SizedBox(width: 30),
                      Row(children: [
                        const SizedBox(width: 30,height: 30,child: Icon(Remix.chat_1_line)),
                        Padding(padding: const EdgeInsets.only(left: 5),child: Text(focusChooseData.commentNum,style: const TextStyle(fontSize: 10)),)
                      ]),
                      const Expanded(child: SizedBox()),
                      InkWell(onTap: callbackBottom,child: const Icon(Remix.more_line)),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
            child: Container(
              color: Colors.black12,
            ),
          )
        ],
      ),
    );
  }
}
