import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mr_builder/utils/app_colors/app_colors.dart';
import 'package:mr_builder/utils/app_constants/const_images.dart';
import 'package:mr_builder/utils/app_constants/text_strings.dart';
import 'package:mr_builder/utils/app_text/app_text.dart';
import 'package:mr_builder/utils/app_text_field.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(22, 60, 22, 50),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              ImageConst.backBtn,
                              color: AppColors.white_color,
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(ImageConst.dp),
                          SizedBox(width: 10),
                          AppText(
                            title: ConstantStrings.willJacks,
                            color: AppColors.white_color,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Image.asset(ImageConst.more),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  child: appField(
                    context: context,
                    hint: ConstantStrings.startTyping,
                    fillColor: AppColors.white_color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 17, 20, 17),
                    child: Image.asset(ImageConst.send),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
