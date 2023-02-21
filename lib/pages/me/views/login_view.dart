import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../i18n/i18n_keys.dart';
import '../../../utils/keyboard_util.dart';
import '../../widgets/edit_widget.dart';
import '../contorllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(title: Text(controller.buttonTypeDesc)),
        body:  _buildBody(context))
    );
  }

  Widget _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          const SizedBox(height: 50), //距离顶部距离
          buildTopWidget(), //设置登陆欢迎
          const SizedBox(height: 50), //距离顶部距离
          _inputUserName(), //用户名
          _inputPassword(), //密码
          _inputEnsurePassword(), //距离上一个View距离
          // buildPrivacyWidget(), //隐私政策
          const SizedBox(height: 10), //距离上一个View距离
          _loginButton(), //登陆按钮
          const SizedBox(height: 20), //距离上一个View距离
        ],
      ),
    );
  }

  /// 用户名
  Widget _inputUserName() {
    return EditWidget(
      textEditingController: controller.textEditingControllerUserName,
      iconWidget: const Icon(Icons.person_outline, color: Colors.blue),
      hintText: Keys.editUserNameHint,
      keyboardType: TextInputType.text,
      onChanged: (value) => controller.userName = value,
    );
  }

  /// 密码
  Widget _inputPassword() {
    return EditWidget(
      textEditingController: controller.textEditingControllerUserPassword,
      iconWidget: const Icon(
        Icons.lock_outline,
        color: Colors.blue,
      ),
      hintText: Keys.editPasswordHint,
      showPasswordType: true,
      onChanged: (value) => controller.password = value,
    );
  }

  /// 确认密码
  Widget _inputEnsurePassword() {
    return Obx(() {
      return Visibility(
        visible: controller.buttonType == ButtonType.register ? true : false,
        child: EditWidget(
          textEditingController:
          controller.textEditingControllerUserEnsurePassword,
          iconWidget: const Icon(
            Icons.lock_outline,
            color: Colors.blue,
          ),
          hintText: Keys.editEnsurePasswordHint.tr,
          showPasswordType: true,
          onChanged: (value) => controller.ensurePassword = value,
        ),
      );
    });
  }

  /// 登录按钮
  Widget _loginButton() {
    return MaterialButton(
        height: 45,
        color: Colors.blue,
        textColor: Colors.white,
        splashColor: Colors.red,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () => {
          KeyboardUtils.hideKeyboard(Get.context!),
          controller.goToLoginRegister(),
        },
        child: Text(
          controller.buttonTypeDesc,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ));
  }

  //Widget-Top
  Widget buildTopWidget() {
    return const Text("密码登录", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
    );
  }

}
