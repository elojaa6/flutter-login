import 'package:get/get.dart';

import 'modules/login/login_controller.dart';

class Injection {
  Future<void> init() async {
    Get.lazyPut(() => LoginController());
  }
}
