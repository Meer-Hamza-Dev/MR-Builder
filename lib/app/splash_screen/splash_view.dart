import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_builder/app/splash_screen/splash_controller.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';

class Splash_view extends StatelessWidget {
  const Splash_view({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.white_color,
        body: Center(
          child: Image.asset(
            ImageConst.splashLogo,
          ),
        ),
      ),
    );
  }
}
