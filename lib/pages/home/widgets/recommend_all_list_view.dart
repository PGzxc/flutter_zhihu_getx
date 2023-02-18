import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/models/recommend_all_data.dart';

///@描述：首页-推荐-全站-自定义ViewItem
///

class RecommendAllListView extends StatelessWidget {
  const RecommendAllListView({Key? key, this.recommendAllData, this.callback})
      : super(key: key);

  final RecommendAllData? recommendAllData;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Column(
        children: [
          Container(
            color: Colors.white10,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Text(recommendAllData!.titleTxt,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15))), //标题
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            recommendAllData!.authImagePath),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(recommendAllData!.authName,
                                        style: const TextStyle(fontSize: 10.0)),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: Text(recommendAllData!.contentTxt,
                                    style: const TextStyle(fontSize: 13),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis)),
                          ],
                        )),
                        Visibility(visible:recommendAllData!.isShowImage ,child:  Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                              child: AspectRatio(
                                aspectRatio: 1.5,
                                child: SizedBox(
                                  height: 60,
                                  child: Image.asset(
                                    recommendAllData!.imagePath,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                        ))

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text("${recommendAllData!.likeNum} 赞同",
                          style: const TextStyle(fontSize: 10.0)),
                      const SizedBox(width: 10),
                      Text("${recommendAllData!.commentNum} 评论",
                          style: const TextStyle(fontSize: 10.0)),
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
