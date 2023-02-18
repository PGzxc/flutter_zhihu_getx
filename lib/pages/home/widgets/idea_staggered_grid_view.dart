import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/models/idea_grid_data.dart';
import 'package:flutter_zhihu_getx/res/app_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/utils/hexo_color.dart';

///@描述：首页-想法-Grid-自定义View
///
class IdeaStaggeredGridView extends StatelessWidget {
  const IdeaStaggeredGridView({Key? key, this.ideaGridData, this.callback})
      : super(key: key);

  final VoidCallback? callback;
  final IdeaGridData? ideaGridData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: callback,
      child: Container(
        decoration:  BoxDecoration(
            color: HexColor('#ededed'),
            borderRadius: const BorderRadius.all(Radius.circular(16.0))),
        child: Column(
          children: [
            ClipRRect(
              //图片
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
              child: AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    ideaGridData!.imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
                //标题
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                    width: double.infinity,
                    child: Text(ideaGridData!.titleTxt,
                        style: const TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w300),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis))),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      SizedBox(
                          width: 20,
                          height: 20,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(ideaGridData!.authImagePath),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(ideaGridData!.authName,
                            style: const TextStyle(fontSize: 10.0)),
                      )
                    ],
                  )),
                  Row(
                    children: [
                      Icon(Icons.favorite_border,
                          color:
                              ideaGridData!.isLike ? Colors.red : Colors.grey),
                      Text("${ideaGridData!.likeNum}",
                          style: const TextStyle(fontSize: 10.0))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
