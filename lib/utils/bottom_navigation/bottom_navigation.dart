import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mr_builder/routes/app_pages.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 92,
          decoration: BoxDecoration(
            color: AppColors.white_color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(30, 20),
              topRight: Radius.elliptical(30, 20),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(26, 35, 0, 76),
                blurRadius: 12,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNavItem(ImageConst.home, Routes.homeViewRoute, 'Home'),
              buildNavItem(
                  ImageConst.task, Routes.homeViewRoute, 'My tasks'),
              SizedBox(width: 60),
              buildNavItem(ImageConst.message, Routes.homeViewRoute, 'Chats'),
              buildNavItem(
                  ImageConst.setting, Routes.homeViewRoute, 'Settings'),
            ],
          ),
        ),
        Positioned(
          top: -25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                onPressed: () {
                  Get.toNamed(Routes.createTaskRoute);
                },
                backgroundColor: AppColors.secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(ImageConst.plus),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildNavItem(String assetPath, String route, String text) {
  return InkWell(
    onTap: () {
      Get.toNamed(route);
    },
    child: SizedBox(
      width: 60,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            assetPath,
            color: (Get.currentRoute == route)
                ? AppColors.grey_color
                : AppColors.secondaryColor,
          ),
          SizedBox(height: 5),
          AppText(
            title: text,
            size: 10,
            color: (Get.currentRoute == route)
                ? AppColors.grey_color
                : AppColors.secondaryColor,
          )
        ],
      ),
    ),
  );
}
