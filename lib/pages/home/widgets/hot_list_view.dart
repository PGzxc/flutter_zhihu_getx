import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zhihu_getx/pages/home/models/hot_list_data.dart';

class HotListView extends StatelessWidget {
  const HotListView({Key? key, this.hotListData, this.callback,this.index})
      : super(key: key);

  final VoidCallback? callback;
  final HotListData? hotListData;
  final int? index; //传入顺序

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: callback,
          child: Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          //alignment: Alignment.topLeft,
                          child: Text("${index!+1}",        //hotListData!.number
                              style: TextStyle(
                                  color:
                                  "${index!+1}".compareTo("3") <= 0
                                          ? Colors.red
                                          : Colors.orangeAccent,
                                  fontSize: 18.0)),
                        ),
                        Visibility(
                            visible: hotListData!.isHot,
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border.all(color: Colors.red),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(2.0)),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 2.0,
                                    bottom: 2.0,
                                    left: 3.0,
                                    right: 3.0),
                                child: const Text("热",
                                    style: TextStyle(
                                        fontSize: 10.0, color: Colors.red))))
                      ],
                    )),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.only(bottom: 10.0, right: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            hotListData!.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                height: 1.1,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(hotListData!.hotNum,
                              style: const TextStyle(color: Colors.grey)),
                        )
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: ClipRRect(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(5)),
                        child: AspectRatio(
                          aspectRatio: 1.5,
                          child: SizedBox(
                            height: 60,
                            child: Image.asset(
                              hotListData!.imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )))
              ],
            ),
          )),
    );
  }
}
