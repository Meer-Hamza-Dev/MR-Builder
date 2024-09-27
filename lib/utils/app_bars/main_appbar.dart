// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({
    super.key,
    this.title,
    this.width,
    this.child,
    this.size,
    this.imageSuffix,
    this.onTap,
    this.leadingWidget,
    this.icon = 'assets/images/backBtn.svg',
  });
  final String? title;
  final String icon;
  double? width;
  double? size;
  VoidCallback? onTap;
  Widget? child;
  Widget? imageSuffix;
  Widget? leadingWidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leadingWidget ??
              GestureDetector(
                onTap: onTap ??
                    () {
                      Get.back();
                    },
                child: SvgPicture.asset(icon),
              ),
          child ??
              AppText(
                title: '$title',
                fontWeight: FontWeight.w600,
                size: size ?? 20,
              ),
          imageSuffix ??
              SvgPicture.asset(
                'assets/images/backBtn.svg',
                color: Colors.transparent,
              ),
        ],
      ),
    );
  }
}
