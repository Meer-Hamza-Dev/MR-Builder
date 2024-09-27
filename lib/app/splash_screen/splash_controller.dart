import 'package:get/get.dart';
import 'package:mr_builder/routes/app_pages.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();
  @override
  void onInit() {
    super.onInit();
    initscreen();
  }

  void initscreen() async {
    await Future.delayed(
      Duration(seconds: 2),
      () {
        Get.toNamed(Routes.signinViewRoute);
      },
    );
  }
}
