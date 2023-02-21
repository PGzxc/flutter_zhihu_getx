
///@描述：我的-回答问题-数据类
///@时间：2023-02-20

class MeQuestionData {
  MeQuestionData(
      {this.question = '',
        this.focusNum = '',});

  String question; //问题
  String focusNum; //关注数


  //模拟接口返回的数据集合
  static List<MeQuestionData> meQuestionList = <MeQuestionData>[
    MeQuestionData(
        question: '你好陌生人，你们失眠的时候都在想什么呢，我经常在想。为什么那么辛苦的活着。可这又什么办法呢。？',
        focusNum: '89 关注',
      ),
    MeQuestionData(
      question: '现在年轻人成功的标准是什么？',
      focusNum: '657 关注',),
    MeQuestionData(
      question: '你好对面的陌生人，请问如何理性的处理感情问题？',
      focusNum: '148 关注',),
    MeQuestionData(
      question: '你觉得信仰是什么',
      focusNum: '106 关注',),
    MeQuestionData(
      question: '20岁男生存款10万买车还是投资？',
      focusNum: '376 关注',),
    MeQuestionData(
      question: '什么样的物质活动与意识有直接的关系呢？',
      focusNum: '9 关注',),
  ];
}
