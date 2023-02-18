///@描述：首页-推荐-全站-数据类

class RecommendAllData {
  RecommendAllData(
      {this.titleTxt = '',
      this.authImagePath = '',
      this.authName = '',
      this.imagePath = '',
      this.isShowImage = false,
      this.contentTxt = '',
      this.likeNum = '',
      this.commentNum = ''});

  String titleTxt; //标题
  String authImagePath; //作者头像
  String authName; //作者名字
  String imagePath; //图片
  bool isShowImage; //是否显示图片
  String contentTxt; //内容
  String likeNum; //点赞数
  String commentNum; //评论数

  //模拟接口返回的数据集合
  static List<RecommendAllData> recommendAllList = <RecommendAllData>[
    RecommendAllData(
        titleTxt: '出差中男女同时住一间是常识性问题吗？',
        authImagePath: 'assets/images/idea_1.png',
        authName: '比天空还远',
        imagePath: 'assets/images/idea_1.png',
        isShowImage: true,
        contentTxt:
            '有一次和一个女同事单独出差。订房间时，我竖起食指，暗暗给老板比划了个“1”，老板会意的点点头，然后说到：对不起，今天客人多，只剩下一间房了',
        likeNum: '7924',
        commentNum: '257'),
    RecommendAllData(
        titleTxt: '为什么美国人都喜欢住郊区别墅？',
        authImagePath: 'assets/images/idea_2.png',
        authName: '风清扬2045',
        imagePath: 'assets/images/idea_2.png',
        isShowImage: false,
        contentTxt:
            '实际上全世界人民大多数都住“别墅”。就不提美加澳了。隔壁人口密度比中国大得多的日本，六成以上人口住独门独户的“一户建”(如果算别墅的话)，自己的房子想怎么设计就怎么设计。',
        likeNum: '392',
        commentNum: '184'),
    RecommendAllData(
        titleTxt: '有哪些食物是因为制作失误才被发明出来的？',
        authImagePath: 'assets/images/idea_3.png',
        authName: '凌千羽',
        imagePath: 'assets/images/idea_3.png',
        isShowImage: true,
        contentTxt:
            '传说乾隆微服私访下江南的时候，路上遇到一伙歹徒，把他和他的随从劫了个精光，乾隆只好挨家挨户地讨饭吃，但是家家户户都门户紧闭，无奈之下乾隆只好在小乡村过夜',
        likeNum: '1112',
        commentNum: '73'),
    RecommendAllData(
        titleTxt: '空姐辞职后从事什么职业最多？',
        authImagePath: 'assets/images/idea_4.png',
        authName: '子瞻门下',
        imagePath: 'assets/images/idea_4.png',
        isShowImage: true,
        contentTxt:
            '我国的不清楚，说说岛国的。到过的退役空姐很多都去了知名的大公司：如S1，SOD，Moodyz，kzwaii等。从事的行业也是五花八门：有医生护士、服务员、保险销售、家庭主妇',
        likeNum: '1112',
        commentNum: '73'),
    RecommendAllData(
        titleTxt: '男生的帅有用吗？',
        authImagePath: 'assets/images/idea_5.png',
        authName: 'lulu',
        imagePath: 'assets/images/idea_5.png',
        isShowImage: true,
        contentTxt:
            '有用。看看这位医生长相简直惊为天人。协和医院第一名，智商了的。整形医生满足了万千少女的幻想，估计小女生，病人看到他都会犯花痴。',
        likeNum: '222',
        commentNum: '476'),
    RecommendAllData(
        titleTxt: '如何最快时间理清一个县城的利益关系？',
        authImagePath: 'assets/images/idea_6.png',
        authName: 'MUMA',
        imagePath: 'assets/images/idea_6.png',
        isShowImage: false,
        contentTxt:
            '如果是做简单了解而不打算深入接触的话，可以通过以下4个途径：1.县级政府站上的年度工作報告(大略了解)。县招商局公开的招商引资宣传材料(重点经济方面)。',
        likeNum: '1.5万',
        commentNum: '3.7万'),
  ];
}
