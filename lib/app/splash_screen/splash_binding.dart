import 'package:get/get.dart';
import 'package:mr_builder/app/splash_screen/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
