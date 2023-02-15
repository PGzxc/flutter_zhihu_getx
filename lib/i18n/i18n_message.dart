import 'package:get/get.dart';
import 'i18n_en.dart';
import 'i18n_zh.dart';

class Message extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    I18nZH.zhKey: I18nZH.zhValues,
    I18nEn.enKey: I18nEn.enValues
  };
}
