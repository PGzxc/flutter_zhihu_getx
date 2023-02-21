import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/focus/models/focus_choose_data.dart';
import 'package:flutter_zhihu_getx/pages/home/models/recommend_all_data.dart';
import 'package:flutter_zhihu_getx/pages/vip/models/vip_discover_book_data.dart';
import 'package:flutter_zhihu_getx/res/gaps.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:remixicon/remixicon.dart';

///@描述：会员-发现-自定义ViewItem
///

class VipBookGridView extends StatelessWidget {
  const VipBookGridView({
    Key? key,
    required this.vipDiscoverBookData,
    this.callback,
  }) : super(key: key);

  final VipDiscoverBookData vipDiscoverBookData;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: callback,
        child: Container(
          // width: 200,
          // height: 600,
          color: Colors.black12,
          //width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              child: SizedBox(
                  //width: double.infinity,
                  child: Image.asset(vipDiscoverBookData.bookImagePath,
                      fit: BoxFit.cover)),
            )),
            //const SizedBox(height: 10,),
            SizedBox(
                height: 40,
                child: Text(vipDiscoverBookData.bookDes,
                    style: const TextStyle(fontSize: 13),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis)),
            //const SizedBox(height: 10,),
            SizedBox(
              height: 20,
              child: Text(vipDiscoverBookData.readProgress,
                  style: const TextStyle(fontSize: 10, color: Colors.blue)),
            )
          ]),
        ));
  }
}
