import 'package:get/get.dart';
import '../provider/api_provider.dart';

class APIProviderConfig extends GetxService {

  Future<APIProviderConfig> init() async {
    Get.put(ApiProvider());
    return this;
  }

  ApiProvider getAPiProvider() {
    return Get.find<ApiProvider>();
  }
}
