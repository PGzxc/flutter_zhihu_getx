///@描述：关注-精选-数据类
///@时间：2023-02-19

class VipDiscoverBookData {
  VipDiscoverBookData({
    this.bookImagePath = '',
    this.bookDes = '',
    this.readProgress = '',
  });

  String bookImagePath; //图书图像
  String bookDes; // 图书描述
  String readProgress; //阅读进度

  //模拟接口返回的数据集合
  static List<VipDiscoverBookData> focusChooseList = <VipDiscoverBookData>[
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_1.png',
      bookDes: '真爱至上：决绝复仇、温馨脑洞和单纯的爱',
      readProgress: '上次看到0%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_2.png',
      bookDes: '非典型辣妹：爱你，是我做过最好的事',
      readProgress: '上次看到25%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_3.png',
      bookDes: '红颜悴：意难平的反套路古言小说',
      readProgress: '上次看到40%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_4.png',
      bookDes: '霸道总裁爱上我：甜又爽的反套路现言小说',
      readProgress: '上次看到10%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_5.png',
      bookDes: '恋人的另一面：甜蜜又烧脑的危险爱情',
      readProgress: '上次看到1%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_6.png',
      bookDes: '他的情书：牙科诊室重逢的爱情',
      readProgress: '上次看到3%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_7.png',
      bookDes: '时空缉凶：罪恶之地',
      readProgress: '上次看到30%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_8.png',
      bookDes: '都市男女：我必须忘记你',
      readProgress: '上次看到50%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_1.png',
      bookDes: '隐秘之眼：那些细思及恐的生活故事',
      readProgress: '上次看到60%',
    ),
    VipDiscoverBookData(
      bookImagePath: 'assets/images/idea_2.png',
      bookDes: '宫墙之内：8个虐恋情深的后宫言情故事',
      readProgress: '上次看到60%',
    ),
  ];
}
