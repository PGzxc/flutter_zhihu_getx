
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/me/gradle/me_question_data.dart';
import 'package:remixicon/remixicon.dart';

///@time:2023-02-20
///描述：回答问题View

class MeQuestionView extends StatelessWidget{
  const MeQuestionView({super.key, this.callbackIgnore,this.callbackAnswer, required this.meQuestionData});
  final VoidCallback? callbackIgnore; //忽略点击
  final VoidCallback? callbackAnswer; //写答案
  final MeQuestionData meQuestionData;

  @override
  Widget build(BuildContext context) {
    return  Container(padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),decoration: const BoxDecoration(
      color: Color.fromRGBO(240, 240, 240, 1.0),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),child:Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
      Expanded(child:  Text(meQuestionData.question,style: const TextStyle(fontSize: 14),),),
      const SizedBox(height: 20),
      Row(children: [
        Text(meQuestionData.focusNum,style: const TextStyle(fontSize: 10,color: Colors.black),),
        const Expanded(child: SizedBox()),
        SizedBox(width: 70,child: Container(decoration: const BoxDecoration(
          color: Color.fromRGBO(245, 245, 245, 1.0),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),child: Row(children: const [
           Icon(Remix.eye_2_line),
           Text("忽略",style: TextStyle(fontSize: 10,color: Colors.grey),)
        ]))),
        const SizedBox(width: 20),
        SizedBox(width: 70,child: Container(decoration: const BoxDecoration(
          color: Color.fromRGBO(240, 255, 255, 1.0),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),child: Row(children: const [
           Icon(Remix.eye_2_line),
           Text("写回答",style: TextStyle(fontSize: 10,color: Colors.lightBlue),)
        ]))),
      ],)

    ],) ,);
  }
  
}