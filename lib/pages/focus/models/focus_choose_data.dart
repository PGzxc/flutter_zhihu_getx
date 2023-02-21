///@描述：关注-精选-数据类
///@时间：2023-02-19

class FocusChooseData {
  FocusChooseData(
      {this.recommend = '',
      this.authImagePath = '',
      this.authName = '',
      this.pubTime = '',
      this.title = '',
      this.content = '',
      this.imagePath = '',
      this.isFocused = false,
      this.zanNum = '',
      this.collectNum = '',
      this.commentNum = ''});

  String recommend; //为你推荐
  String authImagePath; //作者头像
  String authName; // 作者名字
  String pubTime; //发表时间
  String title; //标题
  String content; //内容
  String imagePath; //图片
  bool isFocused; //是否关注
  String zanNum; //点赞数
  String collectNum; //收藏数
  String commentNum; // 评论数

  //模拟接口返回的数据集合
  static List<FocusChooseData> focusChooseList = <FocusChooseData>[
    FocusChooseData(
        recommend: '为你推荐.[金融]领域答主',
        authImagePath: 'assets/avatar/avatar_1.png',
        authName: '兜兜',
        pubTime: '2022-12-27 . 回答了问题',
        isFocused: false,
        title: '最近感觉被冻结的群友蛮多的，如果你也被冻结了，记得看下这篇，就不慌了',
        content:
            '最近被冻结的群友比较多，公众号、知乎还有微信上咨询我的也比较多。虽然我之前也写过冻结相关的稿子，但是当时写的不够全面。所以今天再好好写一篇，希望对你有帮助',
        imagePath: 'assets/images/idea_1.png',
        zanNum: '39',
        collectNum: '183',
        commentNum: '14'),
    FocusChooseData(
        recommend: '为你推荐.[情感]领域答主',
        authImagePath: 'assets/avatar/avatar_2.png',
        authName: '执笔写江湖',
        pubTime: '02-09 . 回答了问题',
        isFocused: false,
        title: '如何看穿事物的本质，去掌握世界运行的规律',
        content:
            '我可以很严肃的告诉你，关注我就够了，因为没人比我更懂社会潜规则和职场生存技巧~。只有1%的人能看到真相，这个世界99%的人都活在假象里。这些人根本看不到真实的世界。',
        imagePath: 'assets/images/idea_2.png',
        zanNum: '244',
        collectNum: '2283',
        commentNum: '16'),
    FocusChooseData(
        recommend: '为你推荐.[历史]领域答主',
        authImagePath: 'assets/avatar/avatar_3.png',
        authName: '佐伊23',
        pubTime: '2022-12-31 . 回答了问题',
        isFocused: true,
        title: '捍卫辩证唯物主义，反对回到黑格尔学习辩证法',
        content:
            '现再有一种非常错误的倾向，一提到学习辩证法就言必称黑格尔，似乎不学习黑格尔的辩证法就不是再学习辩证法。这种倾向把黑格尔的辩证法抬到首位，依次打压唯物辩证法。',
        imagePath: 'assets/images/idea_3.png',
        zanNum: '99',
        collectNum: '52',
        commentNum: '26'),
    FocusChooseData(
        recommend: '为你推荐.[心里学]领域答主',
        authImagePath: 'assets/avatar/avatar_4.png',
        authName: '江湖浪人',
        pubTime: '02-15 . 回答了问题',
        isFocused: false,
        title: '当一个人看透人性社会怎样？',
        content:
            '1.人生在世就是让人笑笑，偶尔也笑话笑话别人。2.穷人站在十字街头耍十把钢钩，钩不住亲人骨肉；有钱人在深山老林刷刀枪棍棒，打不散无义的宾朋。',
        imagePath: 'assets/images/idea_4.png',
        zanNum: '14',
        collectNum: '99',
        commentNum: '11'),
    FocusChooseData(
        recommend: '为你推荐.[价值观]领域答主',
        authImagePath: 'assets/avatar/avatar_5.png',
        authName: '古寺屋',
        pubTime: '01-31 . 回答了问题',
        isFocused: false,
        title: '死亡了意味着永远消失了，世界跟自己再也没有关系了。你恐惧吗？',
        content:
            '死亡是比生命更为宏大的存在，138亿年前宇宙诞生，138亿年后宇宙继续扩张，我们生命在这似乎无限的两头之间比一阵微风还要短暂。我们如果把这一阵微风称之为生命，那么其他的一切就都是死亡了吗？',
        imagePath: 'assets/images/idea_5.png',
        zanNum: '429',
        collectNum: '762',
        commentNum: '65'),
    FocusChooseData(
        recommend: '为你推荐.[商业]领域答主',
        authImagePath: 'assets/avatar/avatar_6.png',
        authName: '义乌之狼',
        pubTime: '2022-12-17 . 回答了问题',
        isFocused: false,
        title: '义乌之狼：放弃时间的概念',
        content: '1.每天花一个小时坚持锻炼身体，俯卧撑和跑步，有氧和无氧。2.每天用讯飞有声，听两个小时以上相关的音频做学习。3.继续买两个新本子，做2023年的反思反省日记相关的笔记。',
        imagePath: 'assets/images/idea_6.png',
        zanNum: '1152',
        collectNum: '5381',
        commentNum: '13'),
  ];
}
