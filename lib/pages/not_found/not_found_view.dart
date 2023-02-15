import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

/// 日期：2023-02-14
/// 描述：路由跳转错误页面
/// 说明：点击按钮返回到主页

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.routing.current} Page Not Found',
                style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 25),
            GFButton(
              text: '返回',
              color: GFColors.SUCCESS,
              blockButton: true,
              onPressed: () => Get.offNamed('/main'),
            ),
          ],
        ),
      ),
    );
  }
}
