class UserInfo {
  UserInfo({this.userName = '', this.passWord = ''});

  String userName;
  String passWord;

  static fromJson(Map<String, dynamic> json) {
    return UserInfo(userName: json['userName'] as String,passWord: json['passWord']);
  }
}
