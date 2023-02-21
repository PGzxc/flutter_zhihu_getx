
import 'package:flutter/cupertino.dart';
import 'package:flutter_zhihu_getx/pages/me/utils/login_utils.dart';
import 'package:flutter_zhihu_getx/utils/sp_util.dart';
import 'package:get/get.dart';

import '../../../i18n/i18n_keys.dart';
import '../../../provider/base_controller.dart';
import '../../../routes/app_routes.dart';

enum ButtonType { login, register }

class LoginController extends BaseController {

  final _welcomeContent = Keys.welcomeLoginContent.tr.obs;

  get welcomeContent => _welcomeContent.value;

  set welcomeContent(value) => _welcomeContent.value = value;

  /// 登录注册类型
  final _buttonType = ButtonType.login.obs;

  get buttonType => _buttonType.value;

  set buttonType(value) => _buttonType.value = value;

  /// 登录注册按钮描述语
  final _switchButtonTypeDesc = Keys.switchButtonRegisterDesc.tr.obs;

  get switchButtonTypeDesc => _switchButtonTypeDesc.value;

  set switchButtonTypeDesc(value) => _switchButtonTypeDesc.value = value;

  final _buttonTypeDesc = Keys.loginContent.tr.obs;

  get buttonTypeDesc => _buttonTypeDesc.value;

  set buttonTypeDesc(value) => _buttonTypeDesc.value = value;

  /// 用户名
  final _userName = "".obs;

  get userName => _userName.value;

  set userName(value) => _userName.value = value;

  /// 密码
  final _password = "".obs;

  get password => _password.value;

  set password(value) => _password.value = value;

  /// 确认密码
  final _ensurePassword = "".obs;

  get ensurePassword => _ensurePassword.value;

  set ensurePassword(value) => _ensurePassword.value = value;

  late final TextEditingController textEditingControllerUserName;
  late final TextEditingController textEditingControllerUserPassword;
  late final TextEditingController textEditingControllerUserEnsurePassword;

  @override
  void onInit() {
    super.onInit();
    textEditingControllerUserName = TextEditingController();
    textEditingControllerUserPassword = TextEditingController();
    textEditingControllerUserEnsurePassword = TextEditingController();
  }
  /// 登录
  void goToLoginRegister() {
    if (userName.toString().trim().isEmpty) {
      Get.snackbar(Keys.userNameEmptyInfo.tr, '',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    if (password.toString().trim().isEmpty) {
      Get.snackbar(Keys.passwordEmptyInfo.tr, '',
          snackPosition: SnackPosition.BOTTOM);

      return;
    }
    var paramsLogin = {
      "username": userName.toString().trim(),
      "password": password.toString().trim(),
    };

    var paramsRegister = {
      "username": userName.toString().trim(),
      "password": password.toString().trim(),
      "repassword": ensurePassword.toString().trim(),
    };
    //SpUtil.saveData("userName", userName.toString().trim());
    isLogin=true;
    Get.back(result: userName.toString().trim());
    //Get.toNamed(Routes.me.nameToRoute());

  }
}