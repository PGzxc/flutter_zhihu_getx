import 'dart:convert';
import 'package:get/get.dart';
import '../../../utils/logger/logger_util.dart';
import '../../../utils/sp_util.dart';
import '../models/user_info_data.dart';

/// 主题工具类
class LoginUtils {
  static const String userInfo = 'userInfo';

  static final  _isLogin = false.obs;
  get isLogin => _isLogin.value;
  set isLogin(value) => _isLogin.value = value;


  ///保存用户信息
  static Future<void> saveUserInfo(UserInfo data) async {
    var encode = json.encode(data);
    _isLogin.value=true;
    bool isSuccess = await SpUtil.saveData<String>(userInfo, encode);
    LoggerUtil.e('LoginRegisterUtils isSuccess-------------------: ${isSuccess}');
  }

  ///获取用户信息
  static UserInfo? getUserInfo() {
    String? userInfoString = SpUtil.getData<String>(userInfo);
    return (userInfoString == null) ? null : UserInfo.fromJson(json.decode(userInfoString));
  }

  ///清除用户信息
  static void clearUserInfo() {
    _isLogin.value=false;
    SpUtil.clearData(userInfo);
  }
}
