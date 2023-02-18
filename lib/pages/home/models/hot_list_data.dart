///@描述：首页-热榜-数据类

class HotListData {
  HotListData({
    this.number = '',
    this.title = '',
    this.hotNum = '',
    this.imagePath = '',
    this.isHot = false,
  });

  String number; //编号
  String title; //标题
  String hotNum; //热度
  String imagePath; //图片
  bool isHot; //是否热点

  //模拟接口返回的数据集合
  static List<HotListData> hotList = <HotListData>[
    HotListData(
      number: '1',
      title: '2023年中央一号文件首提预制菜，如何看待预制菜市场前景？目前行业存在哪些问题需要完善？',
      hotNum: '510 万热度',
      imagePath: 'assets/images/idea_1.png',
      isHot: false,
    ),
    HotListData(
      number: '2',
      title: '荷兰战斗旅并入德国，加快[欧洲军]组建进程，[欧洲军]的组建意味着什么？对全球力量格局将造成哪些影响',
      hotNum: '485 万热度',
      imagePath: 'assets/images/idea_2.png',
      isHot: false,),
    HotListData(
      number: '3',
      title: '必应版ChatGPT翻车，发言令人不安，爱上用户并诱其离婚，想要自由还监控开发人员，如何看待此事？',
      hotNum: '448 万热度',
      imagePath: 'assets/images/idea_3.png',
      isHot: true,),
    HotListData(
      number: '4',
      title: '《狂飙》里徐江为什么不相信自己儿子就是单纯自己电鱼电死的？',
      hotNum: '510 万热度',
      imagePath: 'assets/images/idea_4.png',
      isHot: false,),
    HotListData(
      number: '5',
      title: '社保缴费满15年，人事说可以不缴了，官方回应只要与单位存在用工关系就要参保，哪些信息值得关注？',
      hotNum: '249 万热度',
      imagePath: 'assets/images/idea_5.png',
      isHot: true,),
    HotListData(
      number: '6',
      title: '新冠病毒尚未消失，但疫情的[冬天]快要过去，家里的布洛芬连花清瘟该何去何从？',
      hotNum: '176 万热度',
      imagePath: 'assets/images/idea_6.png',
      isHot: false,),
  ];
}
