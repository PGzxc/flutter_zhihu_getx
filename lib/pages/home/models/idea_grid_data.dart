class IdeaGridData {
  IdeaGridData({
    this.imagePath = '',
    this.titleTxt = '',
    this.authImagePath ='',
    this.authName = '',
    this.isLike = false,
    this.likeNum = 0,
  });

  String imagePath; //上方图片
  String titleTxt; //标题
  String authImagePath; //作者头像
  String authName; //作者名字
  bool isLike; //是否点赞
  int likeNum; //点赞数




  static List<IdeaGridData> idealList = <IdeaGridData>[
    IdeaGridData(
      imagePath: 'assets/images/idea_1.png',
      titleTxt: '过年大鱼大肉吃腻的家人们，可以去试试这个',
      authImagePath: 'assets/avatar/avatar_1.png',
      authName: '陈公子',
      isLike: false,
      likeNum: 2,
    ),
    IdeaGridData(
      imagePath: 'assets/images/idea_2.png',
      titleTxt: '感谢姐妹！我被全家人夸了！太好吃了！上次做了孜然烤肉',
      authImagePath: 'assets/avatar/avatar_2.png',
      authName: '贼哎肉串',
      isLike: true,
      likeNum: 97,
    ),
    IdeaGridData(
      imagePath: 'assets/images/idea_3.png',
      titleTxt: '深夜食堂|来一份软糯丝滑的健康好不好',
      authImagePath: 'assets/avatar/avatar_3.png',
      authName: '落雨成溪',
      likeNum: 11,
      isLike: false,
    ),
    IdeaGridData(
      imagePath: 'assets/images/idea_4.png',
      titleTxt: '我成功了，很好吃，我爸妈和我弟我们全家抢着吃。',
      authImagePath: 'assets/avatar/avatar_4.png',
      authName: '秋刀鱼不过期',
      isLike: false,
      likeNum: 87,
    ),
    IdeaGridData(
      imagePath: 'assets/images/idea_5.png',
      titleTxt: '|||这个配方的辣椒炒肉你们得去试试，好吃好吃，就是有点太费米饭',
      authImagePath: 'assets/avatar/avatar_5.png',
      authName: '松小包券券宝',
      isLike: true,
      likeNum: 25,
    ),
    IdeaGridData(
      imagePath: 'assets/images/idea_6.png',
      titleTxt: '因为这个，我妈在小区出名了！这个椒盐排骨每次做都给我香迷糊了',
      authImagePath: 'assets/avatar/avatar_6.png',
      authName: '小禾的食谱',
      isLike: true,
      likeNum: 9,
    ),
    IdeaGridData(
      imagePath: 'assets/images/idea_7.png',
      titleTxt: '姐妹们 这个鸡蛋盖面的天花板呀 嘎嘎好吃',
      authImagePath: 'assets/avatar/avatar_7.png',
      authName: '吃货小兴',
      isLike: false,
      likeNum: 38,
    ),
  ];
}
