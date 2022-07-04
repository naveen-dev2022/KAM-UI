import 'package:get/get.dart';
import 'package:kam_sudo/app/modules/login/controller/login_controller.dart';

class LoginBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
          () => LoginController(),
    );
  }


}
