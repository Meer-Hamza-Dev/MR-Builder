import 'package:get/get.dart';
import 'package:mr_builder/app/auth/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
